###### Class com.applovin.exoplayer2.common.base.CharMatcher (com.applovin.exoplayer2.common.base.CharMatcher)
.class public abstract Lcom/applovin/exoplayer2/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/common/base/CharMatcher$h;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$i;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$c;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$l;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$m;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$k;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$x;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$a;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$u;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$z;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$j;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$o;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$r;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$s;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$q;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$p;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$n;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$f;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$y;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$d;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$e;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$aa;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$w;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$b;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$v;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$t;,
        Lcom/applovin/exoplayer2/common/base/CharMatcher$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/applovin/exoplayer2/common/base/Predicate<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(C)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->showCharacter(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static any()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$b;->nK:Lcom/applovin/exoplayer2/common/base/CharMatcher$b;

    return-object v0
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    const/4 v3, 0x2

    if-eq v0, v3, :cond_13

    new-instance v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$c;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/base/CharMatcher$c;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_13
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {v0, p0}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->isEither(CC)Lcom/applovin/exoplayer2/common/base/CharMatcher$l;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->is(C)Lcom/applovin/exoplayer2/common/base/CharMatcher;

    move-result-object p0

    return-object p0

    :cond_29
    invoke-static {}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->none()Lcom/applovin/exoplayer2/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static ascii()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$d;->nM:Lcom/applovin/exoplayer2/common/base/CharMatcher$d;

    return-object v0
.end method

.method public static breakingWhitespace()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$e;->nN:Lcom/applovin/exoplayer2/common/base/CharMatcher;

    return-object v0
.end method

.method public static digit()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$f;->nO:Lcom/applovin/exoplayer2/common/base/CharMatcher$f;

    return-object v0
.end method

.method private finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;
    .registers 9

    :goto_0
    if-ge p2, p3, :cond_1a

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez p6, :cond_17

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p6, 0x1

    goto :goto_17

    :cond_13
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p6, 0x0

    :cond_17
    :goto_17
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1a
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static forPredicate(Lcom/applovin/exoplayer2/common/base/Predicate;)Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/common/base/Predicate<",
            "-",
            "Ljava/lang/Character;",
            ">;)",
            "Lcom/applovin/exoplayer2/common/base/CharMatcher;"
        }
    .end annotation

    instance-of v0, p0, Lcom/applovin/exoplayer2/common/base/CharMatcher;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/applovin/exoplayer2/common/base/CharMatcher;

    goto :goto_d

    :cond_7
    new-instance v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$h;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/base/CharMatcher$h;-><init>(Lcom/applovin/exoplayer2/common/base/Predicate;)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method

.method public static inRange(CC)Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$i;

    invoke-direct {v0, p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher$i;-><init>(CC)V

    return-object v0
.end method

.method public static invisible()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$j;->nS:Lcom/applovin/exoplayer2/common/base/CharMatcher$j;

    return-object v0
.end method

.method public static is(C)Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$k;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/base/CharMatcher$k;-><init>(C)V

    return-object v0
.end method

.method private static isEither(CC)Lcom/applovin/exoplayer2/common/base/CharMatcher$l;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$l;

    invoke-direct {v0, p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher$l;-><init>(CC)V

    return-object v0
.end method

.method public static isNot(C)Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$m;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/base/CharMatcher$m;-><init>(C)V

    return-object v0
.end method

.method public static javaDigit()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$n;->nW:Lcom/applovin/exoplayer2/common/base/CharMatcher$n;

    return-object v0
.end method

.method public static javaIsoControl()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$o;->nX:Lcom/applovin/exoplayer2/common/base/CharMatcher$o;

    return-object v0
.end method

.method public static javaLetter()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$p;->nY:Lcom/applovin/exoplayer2/common/base/CharMatcher$p;

    return-object v0
.end method

.method public static javaLetterOrDigit()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$q;->nZ:Lcom/applovin/exoplayer2/common/base/CharMatcher$q;

    return-object v0
.end method

.method public static javaLowerCase()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$r;->oa:Lcom/applovin/exoplayer2/common/base/CharMatcher$r;

    return-object v0
.end method

.method public static javaUpperCase()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$s;->ob:Lcom/applovin/exoplayer2/common/base/CharMatcher$s;

    return-object v0
.end method

.method public static none()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$w;->oe:Lcom/applovin/exoplayer2/common/base/CharMatcher$w;

    return-object v0
.end method

.method public static noneOf(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/applovin/exoplayer2/common/base/CharMatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->negate()Lcom/applovin/exoplayer2/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method private static showCharacter(C)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x6

    new-array v0, v0, [C

    fill-array-data v0, :array_20

    const/4 v1, 0x0

    :goto_7
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1b

    rsub-int/lit8 v3, v1, 0x5

    and-int/lit8 v4, p0, 0xf

    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v3

    shr-int/2addr p0, v2

    int-to-char p0, p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1b
    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :array_20
    .array-data 2
        0x5cs
        0x75s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method public static singleWidth()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$z;->oh:Lcom/applovin/exoplayer2/common/base/CharMatcher$z;

    return-object v0
.end method

.method public static whitespace()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$aa;->oj:Lcom/applovin/exoplayer2/common/base/CharMatcher$aa;

    return-object v0
.end method


# virtual methods
.method public and(Lcom/applovin/exoplayer2/common/base/CharMatcher;)Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$a;

    invoke-direct {v0, p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher$a;-><init>(Lcom/applovin/exoplayer2/common/base/CharMatcher;Lcom/applovin/exoplayer2/common/base/CharMatcher;)V

    return-object v0
.end method

.method public apply(Ljava/lang/Character;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_40

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v4

    if-eqz v4, :cond_3d

    if-ne v2, p2, :cond_27

    add-int/lit8 v2, v3, -0x1

    if-eq v1, v2, :cond_24

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    :cond_27
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3d
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_40
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public countIn(Ljava/lang/CharSequence;)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    return v1
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public indexIn(Ljava/lang/CharSequence;I)I
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, v0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkPositionIndex(II)I

    :goto_7
    if-ge p2, v0, :cond_17

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_14

    return p2

    :cond_14
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_17
    const/4 p1, -0x1

    return p1
.end method

.method public lastIndexIn(Ljava/lang/CharSequence;)I
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_16

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    const/4 p1, -0x1

    return p1
.end method

.method public abstract matches(C)Z
.end method

.method public matchesAllOf(Ljava/lang/CharSequence;)Z
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_17

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 p1, 0x0

    return p1

    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_17
    return v1
.end method

.method public matchesAnyOf(Ljava/lang/CharSequence;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matchesNoneOf(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public matchesNoneOf(Ljava/lang/CharSequence;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public negate()Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 2

    new-instance v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$u;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/base/CharMatcher$u;-><init>(Lcom/applovin/exoplayer2/common/base/CharMatcher;)V

    return-object v0
.end method

.method public or(Lcom/applovin/exoplayer2/common/base/CharMatcher;)Lcom/applovin/exoplayer2/common/base/CharMatcher;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/common/base/CharMatcher$x;

    invoke-direct {v0, p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher$x;-><init>(Lcom/applovin/exoplayer2/common/base/CharMatcher;Lcom/applovin/exoplayer2/common/base/CharMatcher;)V

    return-object v0
.end method

.method public removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    return-object p1

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_12
    add-int/2addr v0, v1

    :goto_13
    array-length v3, p1

    if-ne v0, v3, :cond_1e

    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    sub-int/2addr v0, v2

    invoke-direct {v1, p1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_1e
    aget-char v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v3

    if-eqz v3, :cond_29

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_29
    sub-int v3, v0, v2

    aget-char v4, p1, v0

    aput-char v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    return-object p1

    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    aput-char p2, p1, v0

    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-ge v0, v1, :cond_22

    aget-char v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_12

    aput-char p2, p1, v0

    goto :goto_12

    :cond_22
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    return-object p2
.end method

.method public replaceFrom(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->replaceFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_24

    return-object p1

    :cond_24
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    mul-int/lit8 v6, v4, 0x3

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x10

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    :cond_33
    invoke-virtual {v5, p1, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ne v0, v3, :cond_33

    invoke-virtual {v5, p1, v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public retainFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->negate()Lcom/applovin/exoplayer2/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->removeFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method setBits(Ljava/util/BitSet;)V
    .registers 4

    const v0, 0xffff

    :goto_3
    if-ltz v0, :cond_12

    int-to-char v1, v0

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    :cond_f
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trimAndCollapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 13

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v0, :cond_17

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_17

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_17
    move v0, v1

    :goto_18
    if-le v0, v5, :cond_27

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-eqz v2, :cond_27

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_27
    if-nez v5, :cond_30

    if-ne v0, v1, :cond_30

    invoke-virtual {p0, p1, p2}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object p1

    goto :goto_41

    :cond_30
    add-int/lit8 v6, v0, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    sub-int v0, v6, v5

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->finishCollapseFrom(Ljava/lang/CharSequence;IICLjava/lang/StringBuilder;Z)Ljava/lang/String;

    move-result-object p1

    :goto_41
    return-object p1
.end method

.method public trimFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_15

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    :goto_15
    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-le v0, v1, :cond_27

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_27

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    :cond_27
    :goto_27
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public trimLeadingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1d

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v2

    if-nez v2, :cond_1a

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    const-string p1, ""

    return-object p1
.end method

.method public trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_21

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/common/base/CharMatcher;->matches(C)Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_21
    const-string p1, ""

    return-object p1
.end method
