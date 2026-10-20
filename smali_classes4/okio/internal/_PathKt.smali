###### Class okio.internal._PathKt (okio.internal._PathKt)
.class public final Lokio/internal/_PathKt;
.super Ljava/lang/Object;
.source "-Path.kt"


# static fields
.field private static final a:Lokio/ByteString;

.field private static final b:Lokio/ByteString;

.field private static final c:Lokio/ByteString;

.field private static final d:Lokio/ByteString;

.field private static final e:Lokio/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lokio/ByteString;->a:Lokio/ByteString$Companion;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->d(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lokio/internal/_PathKt;->a:Lokio/ByteString;

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->d(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lokio/internal/_PathKt;->b:Lokio/ByteString;

    const-string v1, "/\\"

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->d(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lokio/internal/_PathKt;->c:Lokio/ByteString;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->d(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v1

    sput-object v1, Lokio/internal/_PathKt;->d:Lokio/ByteString;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Lokio/ByteString$Companion;->d(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    sput-object v0, Lokio/internal/_PathKt;->e:Lokio/ByteString;

    return-void
.end method

.method private static final a(Lokio/Path;)I
    .registers 6

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    sget-object v1, Lokio/internal/_PathKt;->a:Lokio/ByteString;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    return v0

    :cond_11
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    sget-object v0, Lokio/internal/_PathKt;->b:Lokio/ByteString;

    invoke-static {p0, v0, v2, v3, v4}, Lokio/ByteString;->lastIndexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getBACKSLASH$p()Lokio/ByteString;
    .registers 1

    sget-object v0, Lokio/internal/_PathKt;->b:Lokio/ByteString;

    return-object v0
.end method

.method public static final synthetic access$getDOT$p()Lokio/ByteString;
    .registers 1

    sget-object v0, Lokio/internal/_PathKt;->d:Lokio/ByteString;

    return-object v0
.end method

.method public static final synthetic access$getDOT_DOT$p()Lokio/ByteString;
    .registers 1

    sget-object v0, Lokio/internal/_PathKt;->e:Lokio/ByteString;

    return-object v0
.end method

.method public static final synthetic access$getIndexOfLastSlash(Lokio/Path;)I
    .registers 1

    invoke-static {p0}, Lokio/internal/_PathKt;->a(Lokio/Path;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSLASH$p()Lokio/ByteString;
    .registers 1

    sget-object v0, Lokio/internal/_PathKt;->a:Lokio/ByteString;

    return-object v0
.end method

.method public static final synthetic access$getSlash(Lokio/Path;)Lokio/ByteString;
    .registers 1

    invoke-static {p0}, Lokio/internal/_PathKt;->b(Lokio/Path;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$lastSegmentIsDotDot(Lokio/Path;)Z
    .registers 1

    invoke-static {p0}, Lokio/internal/_PathKt;->c(Lokio/Path;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$rootLength(Lokio/Path;)I
    .registers 1

    invoke-static {p0}, Lokio/internal/_PathKt;->d(Lokio/Path;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$toSlash(Ljava/lang/String;)Lokio/ByteString;
    .registers 1

    invoke-static {p0}, Lokio/internal/_PathKt;->g(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lokio/Path;)Lokio/ByteString;
    .registers 7

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    sget-object v1, Lokio/internal/_PathKt;->a:Lokio/ByteString;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_11

    goto :goto_1f

    :cond_11
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    sget-object v1, Lokio/internal/_PathKt;->b:Lokio/ByteString;

    invoke-static {p0, v1, v2, v3, v4}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result p0

    if-eq p0, v5, :cond_1e

    goto :goto_1f

    :cond_1e
    move-object v1, v4

    :goto_1f
    return-object v1
.end method

.method private static final c(Lokio/Path;)Z
    .registers 6

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    sget-object v1, Lokio/internal/_PathKt;->e:Lokio/ByteString;

    invoke-virtual {v0, v1}, Lokio/ByteString;->i(Lokio/ByteString;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_48

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->F()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1a

    return v3

    :cond_1a
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->F()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    sget-object v4, Lokio/internal/_PathKt;->a:Lokio/ByteString;

    invoke-virtual {v0, v2, v4, v1, v3}, Lokio/ByteString;->z(ILokio/ByteString;II)Z

    move-result v0

    if-eqz v0, :cond_31

    return v3

    :cond_31
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->F()I

    move-result p0

    add-int/lit8 p0, p0, -0x3

    sget-object v2, Lokio/internal/_PathKt;->b:Lokio/ByteString;

    invoke-virtual {v0, p0, v2, v1, v3}, Lokio/ByteString;->z(ILokio/ByteString;II)Z

    move-result p0

    if-eqz p0, :cond_48

    return v3

    :cond_48
    return v1
.end method

.method public static final commonCompareTo(Lokio/Path;Lokio/Path;)I
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p1}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lokio/ByteString;->f(Lokio/ByteString;)I

    move-result p0

    return p0
.end method

.method public static final commonEquals(Lokio/Path;Ljava/lang/Object;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lokio/Path;

    if-eqz v0, :cond_1b

    check-cast p1, Lokio/Path;

    invoke-virtual {p1}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public static final commonHashCode(Lokio/Path;)I
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->hashCode()I

    move-result p0

    return p0
.end method

.method public static final commonIsAbsolute(Lokio/Path;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/internal/_PathKt;->access$rootLength(Lokio/Path;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static final commonIsRelative(Lokio/Path;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/internal/_PathKt;->access$rootLength(Lokio/Path;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static final commonIsRoot(Lokio/Path;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/internal/_PathKt;->access$rootLength(Lokio/Path;)I

    move-result v0

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->F()I

    move-result p0

    if-ne v0, p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public static final commonName(Lokio/Path;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->j()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->K()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonNameBytes(Lokio/Path;)Lokio/ByteString;
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/internal/_PathKt;->access$getIndexOfLastSlash(Lokio/Path;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1a

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v2, v1, v3}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object p0

    goto :goto_31

    :cond_1a
    invoke-virtual {p0}, Lokio/Path;->u()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->F()I

    move-result v0

    if-ne v0, v1, :cond_2d

    sget-object p0, Lokio/ByteString;->b:Lokio/ByteString;

    goto :goto_31

    :cond_2d
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    :goto_31
    return-object p0
.end method

.method public static final commonNormalized(Lokio/Path;)Lokio/Path;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lokio/Path;->a:Lokio/Path$Companion;

    invoke-virtual {p0}, Lokio/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lokio/Path$Companion;->d(Ljava/lang/String;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final commonParent(Lokio/Path;)Lokio/Path;
    .registers 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokio/internal/_PathKt;->access$getDOT$p()Lokio/ByteString;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_be

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokio/internal/_PathKt;->access$getSLASH$p()Lokio/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokio/internal/_PathKt;->access$getBACKSLASH$p()Lokio/ByteString;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_be

    invoke-static {p0}, Lokio/internal/_PathKt;->access$lastSegmentIsDotDot(Lokio/Path;)Z

    move-result v0

    if-eqz v0, :cond_38

    goto/16 :goto_be

    :cond_38
    invoke-static {p0}, Lokio/internal/_PathKt;->access$getIndexOfLastSlash(Lokio/Path;)I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_61

    invoke-virtual {p0}, Lokio/Path;->u()Ljava/lang/Character;

    move-result-object v5

    if-eqz v5, :cond_61

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->F()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_53

    return-object v1

    :cond_53
    new-instance v0, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-static {p0, v3, v2, v4, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object v0

    :cond_61
    if-ne v0, v4, :cond_72

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v5

    invoke-static {}, Lokio/internal/_PathKt;->access$getBACKSLASH$p()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lokio/ByteString;->G(Lokio/ByteString;)Z

    move-result v5

    if-eqz v5, :cond_72

    return-object v1

    :cond_72
    const/4 v5, -0x1

    if-ne v0, v5, :cond_94

    invoke-virtual {p0}, Lokio/Path;->u()Ljava/lang/Character;

    move-result-object v6

    if-eqz v6, :cond_94

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->F()I

    move-result v0

    if-ne v0, v2, :cond_86

    return-object v1

    :cond_86
    new-instance v0, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-static {p0, v3, v2, v4, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object v0

    :cond_94
    if-ne v0, v5, :cond_a0

    new-instance p0, Lokio/Path;

    invoke-static {}, Lokio/internal/_PathKt;->access$getDOT$p()Lokio/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object p0

    :cond_a0
    if-nez v0, :cond_b0

    new-instance v0, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-static {p0, v3, v4, v4, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v0, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object v0

    :cond_b0
    new-instance v2, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-static {p0, v3, v0, v4, v1}, Lokio/ByteString;->substring$default(Lokio/ByteString;IIILjava/lang/Object;)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v2, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object v2

    :cond_be
    :goto_be
    return-object v1
.end method

.method public static final commonRelativeTo(Lokio/Path;Lokio/Path;)Lokio/Path;
    .registers 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->f()Lokio/Path;

    move-result-object v0

    invoke-virtual {p1}, Lokio/Path;->f()Lokio/Path;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " and "

    if-eqz v0, :cond_e4

    invoke-virtual {p0}, Lokio/Path;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lokio/Path;->g()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_30
    if-ge v5, v3, :cond_43

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_43
    const/4 v6, 0x1

    if-ne v5, v3, :cond_62

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->F()I

    move-result v3

    invoke-virtual {p1}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lokio/ByteString;->F()I

    move-result v7

    if-ne v3, v7, :cond_62

    sget-object p0, Lokio/Path;->a:Lokio/Path$Companion;

    const/4 p1, 0x0

    const-string v0, "."

    invoke-static {p0, v0, v4, v6, p1}, Lokio/Path$Companion;->get$default(Lokio/Path$Companion;Ljava/lang/String;ZILjava/lang/Object;)Lokio/Path;

    move-result-object p0

    return-object p0

    :cond_62
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lokio/internal/_PathKt;->access$getDOT_DOT$p()Lokio/ByteString;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_77

    const/4 v3, 0x1

    goto :goto_78

    :cond_77
    const/4 v3, 0x0

    :goto_78
    if-eqz v3, :cond_c3

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-static {p1}, Lokio/internal/_PathKt;->access$getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object p1

    if-nez p1, :cond_91

    invoke-static {p0}, Lokio/internal/_PathKt;->access$getSlash(Lokio/Path;)Lokio/ByteString;

    move-result-object p1

    if-nez p1, :cond_91

    sget-object p0, Lokio/Path;->b:Ljava/lang/String;

    invoke-static {p0}, Lokio/internal/_PathKt;->access$toSlash(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p1

    :cond_91
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    if-ge v5, p0, :cond_a5

    move v2, v5

    :cond_98
    add-int/2addr v2, v6

    invoke-static {}, Lokio/internal/_PathKt;->access$getDOT_DOT$p()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v1, v3}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    if-lt v2, p0, :cond_98

    :cond_a5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v5, p0, :cond_be

    :goto_ab
    add-int/lit8 v2, v5, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v1, v3}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    if-lt v2, p0, :cond_bc

    goto :goto_be

    :cond_bc
    move v5, v2

    goto :goto_ab

    :cond_be
    :goto_be
    invoke-static {v1, v4}, Lokio/internal/_PathKt;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p0

    return-object p0

    :cond_c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible relative path to resolve: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Paths of different roots cannot be relative to each other: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final commonResolve(Lokio/Path;Ljava/lang/String;Z)Lokio/Path;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->g0(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lokio/internal/_PathKt;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lokio/internal/_PathKt;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final commonResolve(Lokio/Path;Lokio/Buffer;Z)Lokio/Path;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lokio/internal/_PathKt;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lokio/internal/_PathKt;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final commonResolve(Lokio/Path;Lokio/ByteString;Z)Lokio/Path;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p1}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lokio/internal/_PathKt;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lokio/internal/_PathKt;->commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final commonResolve(Lokio/Path;Lokio/Path;Z)Lokio/Path;
    .registers 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokio/Path;->h()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p1}, Lokio/Path;->u()Ljava/lang/Character;

    move-result-object v0

    if-eqz v0, :cond_17

    goto :goto_4e

    :cond_17
    invoke-static {p0}, Lokio/internal/_PathKt;->b(Lokio/Path;)Lokio/ByteString;

    move-result-object v0

    if-nez v0, :cond_29

    invoke-static {p1}, Lokio/internal/_PathKt;->b(Lokio/Path;)Lokio/ByteString;

    move-result-object v0

    if-nez v0, :cond_29

    sget-object v0, Lokio/Path;->b:Ljava/lang/String;

    invoke-static {v0}, Lokio/internal/_PathKt;->g(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    :cond_29
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {v1, p0}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v1}, Lokio/Buffer;->I()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_42

    invoke-virtual {v1, v0}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    :cond_42
    invoke-virtual {p1}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {v1, p0}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    invoke-static {v1, p2}, Lokio/internal/_PathKt;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p0

    return-object p0

    :cond_4e
    :goto_4e
    return-object p1
.end method

.method public static final commonRoot(Lokio/Path;)Lokio/Path;
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lokio/internal/_PathKt;->access$rootLength(Lokio/Path;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    const/4 p0, 0x0

    goto :goto_1d

    :cond_e
    new-instance v1, Lokio/Path;

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lokio/ByteString;->H(II)Lokio/ByteString;

    move-result-object p0

    invoke-direct {v1, p0}, Lokio/Path;-><init>(Lokio/ByteString;)V

    move-object p0, v1

    :goto_1d
    return-object p0
.end method

.method public static final commonSegments(Lokio/Path;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lokio/internal/_PathKt;->access$rootLength(Lokio/Path;)I

    move-result v1

    const/16 v2, 0x5c

    const/4 v3, -0x1

    if-ne v1, v3, :cond_15

    const/4 v1, 0x0

    goto :goto_2c

    :cond_15
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->F()I

    move-result v3

    if-ge v1, v3, :cond_2c

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokio/ByteString;->j(I)B

    move-result v3

    int-to-byte v4, v2

    if-ne v3, v4, :cond_2c

    add-int/lit8 v1, v1, 0x1

    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->F()I

    move-result v3

    if-ge v1, v3, :cond_63

    move v4, v1

    :goto_37
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6, v1}, Lokio/ByteString;->j(I)B

    move-result v6

    const/16 v7, 0x2f

    int-to-byte v7, v7

    if-eq v6, v7, :cond_51

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6, v1}, Lokio/ByteString;->j(I)B

    move-result v6

    int-to-byte v7, v2

    if-ne v6, v7, :cond_5d

    :cond_51
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Lokio/ByteString;->H(II)Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v5

    :cond_5d
    if-lt v5, v3, :cond_61

    move v1, v4

    goto :goto_63

    :cond_61
    move v1, v5

    goto :goto_37

    :cond_63
    :goto_63
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->F()I

    move-result v2

    if-ge v1, v2, :cond_80

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->F()I

    move-result p0

    invoke-virtual {v2, v1, p0}, Lokio/ByteString;->H(II)Lokio/ByteString;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_80
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->K()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    :cond_a3
    return-object p0
.end method

.method public static final commonSegmentsBytes(Lokio/Path;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Path;",
            ")",
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lokio/internal/_PathKt;->access$rootLength(Lokio/Path;)I

    move-result v1

    const/16 v2, 0x5c

    const/4 v3, -0x1

    if-ne v1, v3, :cond_15

    const/4 v1, 0x0

    goto :goto_2c

    :cond_15
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->F()I

    move-result v3

    if-ge v1, v3, :cond_2c

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3, v1}, Lokio/ByteString;->j(I)B

    move-result v3

    int-to-byte v4, v2

    if-ne v3, v4, :cond_2c

    add-int/lit8 v1, v1, 0x1

    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->F()I

    move-result v3

    if-ge v1, v3, :cond_63

    move v4, v1

    :goto_37
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6, v1}, Lokio/ByteString;->j(I)B

    move-result v6

    const/16 v7, 0x2f

    int-to-byte v7, v7

    if-eq v6, v7, :cond_51

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6, v1}, Lokio/ByteString;->j(I)B

    move-result v6

    int-to-byte v7, v2

    if-ne v6, v7, :cond_5d

    :cond_51
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v6

    invoke-virtual {v6, v4, v1}, Lokio/ByteString;->H(II)Lokio/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v5

    :cond_5d
    if-lt v5, v3, :cond_61

    move v1, v4

    goto :goto_63

    :cond_61
    move v1, v5

    goto :goto_37

    :cond_63
    :goto_63
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lokio/ByteString;->F()I

    move-result v2

    if-ge v1, v2, :cond_80

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v2

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->F()I

    move-result p0

    invoke-virtual {v2, v1, p0}, Lokio/ByteString;->H(II)Lokio/ByteString;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_80
    return-object v0
.end method

.method public static final commonToPath(Ljava/lang/String;Z)Lokio/Path;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    invoke-virtual {v0, p0}, Lokio/Buffer;->g0(Ljava/lang/String;)Lokio/Buffer;

    move-result-object p0

    invoke-static {p0, p1}, Lokio/internal/_PathKt;->toPath(Lokio/Buffer;Z)Lokio/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final commonToString(Lokio/Path;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->K()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final commonVolumeLetter(Lokio/Path;)Ljava/lang/Character;
    .registers 6

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-static {}, Lokio/internal/_PathKt;->access$getSLASH$p()Lokio/ByteString;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lokio/ByteString;->indexOf$default(Lokio/ByteString;Lokio/ByteString;IILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    return-object v4

    :cond_18
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->F()I

    move-result v0

    if-ge v0, v3, :cond_23

    return-object v4

    :cond_23
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lokio/ByteString;->j(I)B

    move-result v0

    const/16 v3, 0x3a

    int-to-byte v3, v3

    if-eq v0, v3, :cond_32

    return-object v4

    :cond_32
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0, v2}, Lokio/ByteString;->j(I)B

    move-result p0

    int-to-char p0, p0

    const/16 v0, 0x61

    if-gt v0, p0, :cond_45

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_45

    const/4 v0, 0x1

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    if-nez v0, :cond_54

    const/16 v0, 0x41

    if-gt v0, p0, :cond_51

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_51

    const/4 v2, 0x1

    :cond_51
    if-nez v2, :cond_54

    return-object v4

    :cond_54
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method private static final d(Lokio/Path;)I
    .registers 8

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->F()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lokio/ByteString;->j(I)B

    move-result v0

    const/16 v3, 0x2f

    int-to-byte v3, v3

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1c

    return v4

    :cond_1c
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, v2}, Lokio/ByteString;->j(I)B

    move-result v0

    const/16 v3, 0x5c

    int-to-byte v3, v3

    const/4 v5, 0x2

    if-ne v0, v3, :cond_54

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->F()I

    move-result v0

    if-le v0, v5, :cond_53

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, v4}, Lokio/ByteString;->j(I)B

    move-result v0

    if-ne v0, v3, :cond_53

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    sget-object v2, Lokio/internal/_PathKt;->b:Lokio/ByteString;

    invoke-virtual {v0, v2, v5}, Lokio/ByteString;->s(Lokio/ByteString;I)I

    move-result v0

    if-ne v0, v1, :cond_52

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->F()I

    move-result v0

    :cond_52
    return v0

    :cond_53
    return v4

    :cond_54
    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->F()I

    move-result v0

    if-le v0, v5, :cond_99

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, v4}, Lokio/ByteString;->j(I)B

    move-result v0

    const/16 v6, 0x3a

    int-to-byte v6, v6

    if-ne v0, v6, :cond_99

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0, v5}, Lokio/ByteString;->j(I)B

    move-result v0

    if-ne v0, v3, :cond_99

    invoke-virtual {p0}, Lokio/Path;->e()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0, v2}, Lokio/ByteString;->j(I)B

    move-result p0

    int-to-char p0, p0

    const/16 v0, 0x61

    if-gt v0, p0, :cond_88

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_88

    const/4 v0, 0x1

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    :goto_89
    if-nez v0, :cond_97

    const/16 v0, 0x41

    if-gt v0, p0, :cond_94

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_94

    const/4 v2, 0x1

    :cond_94
    if-nez v2, :cond_97

    return v1

    :cond_97
    const/4 p0, 0x3

    return p0

    :cond_99
    return v1
.end method

.method private static final e(Lokio/Buffer;Lokio/ByteString;)Z
    .registers 7

    sget-object v0, Lokio/internal/_PathKt;->b:Lokio/ByteString;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Lokio/Buffer;->I()J

    move-result-wide v1

    const-wide/16 v3, 0x2

    cmp-long p1, v1, v3

    if-gez p1, :cond_15

    return v0

    :cond_15
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->m(J)B

    move-result p1

    const/16 v1, 0x3a

    int-to-byte v1, v1

    if-eq p1, v1, :cond_21

    return v0

    :cond_21
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->m(J)B

    move-result p0

    int-to-char p0, p0

    const/16 p1, 0x61

    const/4 v1, 0x1

    if-gt p1, p0, :cond_33

    const/16 p1, 0x7a

    if-gt p0, p1, :cond_33

    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    if-nez p1, :cond_43

    const/16 p1, 0x41

    if-gt p1, p0, :cond_40

    const/16 p1, 0x5a

    if-gt p0, p1, :cond_40

    const/4 p0, 0x1

    goto :goto_41

    :cond_40
    const/4 p0, 0x0

    :goto_41
    if-eqz p0, :cond_44

    :cond_43
    const/4 v0, 0x1

    :cond_44
    return v0
.end method

.method private static final f(B)Lokio/ByteString;
    .registers 3

    const/16 v0, 0x2f

    if-ne p0, v0, :cond_7

    sget-object p0, Lokio/internal/_PathKt;->a:Lokio/ByteString;

    goto :goto_d

    :cond_7
    const/16 v0, 0x5c

    if-ne p0, v0, :cond_e

    sget-object p0, Lokio/internal/_PathKt;->b:Lokio/ByteString;

    :goto_d
    return-object p0

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const-string v1, "not a directory separator: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final g(Ljava/lang/String;)Lokio/ByteString;
    .registers 3

    const-string v0, "/"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lokio/internal/_PathKt;->a:Lokio/ByteString;

    goto :goto_15

    :cond_b
    const-string v0, "\\"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lokio/internal/_PathKt;->b:Lokio/ByteString;

    :goto_15
    return-object p0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory separator: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final toPath(Lokio/Buffer;Z)Lokio/Path;
    .registers 18

    move-object/from16 v0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_f
    sget-object v5, Lokio/internal/_PathKt;->a:Lokio/ByteString;

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7, v5}, Lokio/Buffer;->s(JLokio/ByteString;)Z

    move-result v5

    if-nez v5, :cond_120

    sget-object v5, Lokio/internal/_PathKt;->b:Lokio/ByteString;

    invoke-virtual {v0, v6, v7, v5}, Lokio/Buffer;->s(JLokio/ByteString;)Z

    move-result v8

    if-eqz v8, :cond_23

    goto/16 :goto_120

    :cond_23
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-lt v4, v8, :cond_2f

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v5, 0x1

    goto :goto_30

    :cond_2f
    const/4 v5, 0x0

    :goto_30
    const-wide/16 v10, -0x1

    if-eqz v5, :cond_3e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    invoke-virtual {v1, v3}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_77

    :cond_3e
    if-lez v4, :cond_47

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    goto :goto_77

    :cond_47
    sget-object v4, Lokio/internal/_PathKt;->c:Lokio/ByteString;

    invoke-virtual {v0, v4}, Lokio/Buffer;->q(Lokio/ByteString;)J

    move-result-wide v12

    if-nez v3, :cond_62

    cmp-long v3, v12, v10

    if-nez v3, :cond_5a

    sget-object v3, Lokio/Path;->b:Ljava/lang/String;

    invoke-static {v3}, Lokio/internal/_PathKt;->g(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v3

    goto :goto_62

    :cond_5a
    invoke-virtual {v0, v12, v13}, Lokio/Buffer;->m(J)B

    move-result v3

    invoke-static {v3}, Lokio/internal/_PathKt;->f(B)Lokio/ByteString;

    move-result-object v3

    :cond_62
    :goto_62
    invoke-static {v0, v3}, Lokio/internal/_PathKt;->e(Lokio/Buffer;Lokio/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_77

    const-wide/16 v14, 0x2

    cmp-long v4, v12, v14

    if-nez v4, :cond_74

    const-wide/16 v12, 0x3

    invoke-virtual {v1, v0, v12, v13}, Lokio/Buffer;->n(Lokio/Buffer;J)V

    goto :goto_77

    :cond_74
    invoke-virtual {v1, v0, v14, v15}, Lokio/Buffer;->n(Lokio/Buffer;J)V

    :cond_77
    :goto_77
    invoke-virtual {v1}, Lokio/Buffer;->I()J

    move-result-wide v12

    cmp-long v4, v12, v6

    if-lez v4, :cond_81

    const/4 v4, 0x1

    goto :goto_82

    :cond_81
    const/4 v4, 0x0

    :goto_82
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :cond_87
    :goto_87
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->exhausted()Z

    move-result v12

    if-nez v12, :cond_ee

    sget-object v12, Lokio/internal/_PathKt;->c:Lokio/ByteString;

    invoke-virtual {v0, v12}, Lokio/Buffer;->q(Lokio/ByteString;)J

    move-result-wide v12

    cmp-long v14, v12, v10

    if-nez v14, :cond_9c

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v12

    goto :goto_a3

    :cond_9c
    invoke-virtual {v0, v12, v13}, Lokio/Buffer;->readByteString(J)Lokio/ByteString;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readByte()B

    :goto_a3
    sget-object v13, Lokio/internal/_PathKt;->e:Lokio/ByteString;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_da

    if-eqz v4, :cond_b4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_b4

    goto :goto_87

    :cond_b4
    if-eqz p1, :cond_d6

    if-nez v4, :cond_c9

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_d6

    invoke-static {v8}, Lkotlin/collections/p;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c9

    goto :goto_d6

    :cond_c9
    if-eqz v5, :cond_d2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v9, :cond_d2

    goto :goto_87

    :cond_d2
    invoke-static {v8}, Lkotlin/collections/p;->removeLastOrNull(Ljava/util/List;)Ljava/lang/Object;

    goto :goto_87

    :cond_d6
    :goto_d6
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_da
    sget-object v13, Lokio/internal/_PathKt;->d:Lokio/ByteString;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_87

    sget-object v13, Lokio/ByteString;->b:Lokio/ByteString;

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_87

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_87

    :cond_ee
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_109

    :goto_f4
    add-int/lit8 v4, v2, 0x1

    if-lez v2, :cond_fb

    invoke-virtual {v1, v3}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    :cond_fb
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokio/ByteString;

    invoke-virtual {v1, v2}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    if-lt v4, v0, :cond_107

    goto :goto_109

    :cond_107
    move v2, v4

    goto :goto_f4

    :cond_109
    :goto_109
    invoke-virtual {v1}, Lokio/Buffer;->I()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_116

    sget-object v0, Lokio/internal/_PathKt;->d:Lokio/ByteString;

    invoke-virtual {v1, v0}, Lokio/Buffer;->M(Lokio/ByteString;)Lokio/Buffer;

    :cond_116
    new-instance v0, Lokio/Path;

    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v1

    invoke-direct {v0, v1}, Lokio/Path;-><init>(Lokio/ByteString;)V

    return-object v0

    :cond_120
    :goto_120
    invoke-virtual/range {p0 .. p0}, Lokio/Buffer;->readByte()B

    move-result v5

    if-nez v3, :cond_12a

    invoke-static {v5}, Lokio/internal/_PathKt;->f(B)Lokio/ByteString;

    move-result-object v3

    :cond_12a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f
.end method
