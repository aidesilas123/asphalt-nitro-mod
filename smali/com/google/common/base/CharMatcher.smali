###### Class com.google.common.base.CharMatcher (com.google.common.base.CharMatcher)
.class public abstract Lcom/google/common/base/CharMatcher;
.super Ljava/lang/Object;
.source "CharMatcher.java"

# interfaces
.implements Lcom/google/common/base/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/CharMatcher$h;,
        Lcom/google/common/base/CharMatcher$i;,
        Lcom/google/common/base/CharMatcher$c;,
        Lcom/google/common/base/CharMatcher$l;,
        Lcom/google/common/base/CharMatcher$m;,
        Lcom/google/common/base/CharMatcher$k;,
        Lcom/google/common/base/CharMatcher$x;,
        Lcom/google/common/base/CharMatcher$a;,
        Lcom/google/common/base/CharMatcher$u;,
        Lcom/google/common/base/CharMatcher$z;,
        Lcom/google/common/base/CharMatcher$j;,
        Lcom/google/common/base/CharMatcher$o;,
        Lcom/google/common/base/CharMatcher$r;,
        Lcom/google/common/base/CharMatcher$s;,
        Lcom/google/common/base/CharMatcher$q;,
        Lcom/google/common/base/CharMatcher$p;,
        Lcom/google/common/base/CharMatcher$n;,
        Lcom/google/common/base/CharMatcher$f;,
        Lcom/google/common/base/CharMatcher$y;,
        Lcom/google/common/base/CharMatcher$d;,
        Lcom/google/common/base/CharMatcher$e;,
        Lcom/google/common/base/CharMatcher$a0;,
        Lcom/google/common/base/CharMatcher$w;,
        Lcom/google/common/base/CharMatcher$b;,
        Lcom/google/common/base/CharMatcher$v;,
        Lcom/google/common/base/CharMatcher$t;,
        Lcom/google/common/base/CharMatcher$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/k<",
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

.method static synthetic a(C)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->p(C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static any()Lcom/google/common/base/CharMatcher;
    .registers 1

    sget-object v0, Lcom/google/common/base/CharMatcher$b;->b:Lcom/google/common/base/CharMatcher$b;

    return-object v0
.end method

.method public static anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .registers 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    const/4 v3, 0x2

    if-eq v0, v3, :cond_13

    new-instance v0, Lcom/google/common/base/CharMatcher$c;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$c;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_13
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {v0, p0}, Lcom/google/common/base/CharMatcher;->g(CC)Lcom/google/common/base/CharMatcher$l;

    move-result-object p0

    return-object p0

    :cond_20
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0

    :cond_29
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method public static ascii()Lcom/google/common/base/CharMatcher;
    .registers 1

    sget-object v0, Lcom/google/common/base/CharMatcher$d;->b:Lcom/google/common/base/CharMatcher$d;

    return-object v0
.end method

.method public static breakingWhitespace()Lcom/google/common/base/CharMatcher;
    .registers 1

    sget-object v0, Lcom/google/common/base/CharMatcher$e;->a:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public static digit()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/CharMatcher$f;->d:Lcom/google/common/base/CharMatcher$f;

    return-object v0
.end method

.method public static forPredicate(Lcom/google/common/base/k;)Lcom/google/common/base/CharMatcher;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/lang/Character;",
            ">;)",
            "Lcom/google/common/base/CharMatcher;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/base/CharMatcher;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/common/base/CharMatcher;

    goto :goto_d

    :cond_7
    new-instance v0, Lcom/google/common/base/CharMatcher$h;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$h;-><init>(Lcom/google/common/base/k;)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method

.method private static g(CC)Lcom/google/common/base/CharMatcher$l;
    .registers 3

    new-instance v0, Lcom/google/common/base/CharMatcher$l;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$l;-><init>(CC)V

    return-object v0
.end method

.method public static inRange(CC)Lcom/google/common/base/CharMatcher;
    .registers 3

    new-instance v0, Lcom/google/common/base/CharMatcher$i;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$i;-><init>(CC)V

    return-object v0
.end method

.method public static invisible()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/CharMatcher$j;->d:Lcom/google/common/base/CharMatcher$j;

    return-object v0
.end method

.method public static is(C)Lcom/google/common/base/CharMatcher;
    .registers 2

    new-instance v0, Lcom/google/common/base/CharMatcher$k;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$k;-><init>(C)V

    return-object v0
.end method

.method public static isNot(C)Lcom/google/common/base/CharMatcher;
    .registers 2

    new-instance v0, Lcom/google/common/base/CharMatcher$m;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$m;-><init>(C)V

    return-object v0
.end method

.method public static javaDigit()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/CharMatcher$n;->a:Lcom/google/common/base/CharMatcher$n;

    return-object v0
.end method

.method public static javaIsoControl()Lcom/google/common/base/CharMatcher;
    .registers 1

    sget-object v0, Lcom/google/common/base/CharMatcher$o;->b:Lcom/google/common/base/CharMatcher$o;

    return-object v0
.end method

.method public static javaLetter()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/CharMatcher$p;->a:Lcom/google/common/base/CharMatcher$p;

    return-object v0
.end method

.method public static javaLetterOrDigit()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/CharMatcher$q;->a:Lcom/google/common/base/CharMatcher$q;

    return-object v0
.end method

.method public static javaLowerCase()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/CharMatcher$r;->a:Lcom/google/common/base/CharMatcher$r;

    return-object v0
.end method

.method public static javaUpperCase()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/CharMatcher$s;->a:Lcom/google/common/base/CharMatcher$s;

    return-object v0
.end method

.method public static none()Lcom/google/common/base/CharMatcher;
    .registers 1

    sget-object v0, Lcom/google/common/base/CharMatcher$w;->b:Lcom/google/common/base/CharMatcher$w;

    return-object v0
.end method

.method public static noneOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;
    .registers 1

    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/common/base/CharMatcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->k()Lcom/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method private static p(C)Ljava/lang/String;
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

.method public static singleWidth()Lcom/google/common/base/CharMatcher;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/common/base/CharMatcher$z;->d:Lcom/google/common/base/CharMatcher$z;

    return-object v0
.end method

.method public static whitespace()Lcom/google/common/base/CharMatcher;
    .registers 1

    sget-object v0, Lcom/google/common/base/CharMatcher$a0;->c:Lcom/google/common/base/CharMatcher$a0;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    new-instance v0, Lcom/google/common/base/CharMatcher$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$a;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public c(Ljava/lang/Character;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/CharSequence;)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result v2

    if-eqz v2, :cond_14

    add-int/lit8 v1, v1, 0x1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_17
    return v1
.end method

.method public e(Ljava/lang/CharSequence;)I
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/CharMatcher;->f(Ljava/lang/CharSequence;I)I

    move-result p1

    return p1
.end method

.method public f(Ljava/lang/CharSequence;I)I
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    :goto_7
    if-ge p2, v0, :cond_17

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->h(C)Z

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

.method public abstract h(C)Z
.end method

.method public i(Ljava/lang/CharSequence;)Z
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_17

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/common/base/CharMatcher;->h(C)Z

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

.method public j(Ljava/lang/CharSequence;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->e(Ljava/lang/CharSequence;)I

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

.method public k()Lcom/google/common/base/CharMatcher;
    .registers 2

    new-instance v0, Lcom/google/common/base/CharMatcher$u;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$u;-><init>(Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public l(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    new-instance v0, Lcom/google/common/base/CharMatcher$x;

    invoke-direct {v0, p0, p1}, Lcom/google/common/base/CharMatcher$x;-><init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method public m(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->e(Ljava/lang/CharSequence;)I

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

    invoke-virtual {p0, v3}, Lcom/google/common/base/CharMatcher;->h(C)Z

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

.method public n(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher;->e(Ljava/lang/CharSequence;)I

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

    invoke-virtual {p0, v1}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result v1

    if-eqz v1, :cond_12

    aput-char p2, p1, v0

    goto :goto_12

    :cond_22
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    return-object p2
.end method

.method public o(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher;->k()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->m(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.a (com.google.common.base.CharMatcher$a)
.class final Lcom/google/common/base/CharMatcher$a;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/google/common/base/CharMatcher;

.field final b:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/CharMatcher;

    iput-object p1, p0, Lcom/google/common/base/CharMatcher$a;->a:Lcom/google/common/base/CharMatcher;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/CharMatcher;

    iput-object p1, p0, Lcom/google/common/base/CharMatcher$a;->b:Lcom/google/common/base/CharMatcher;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public h(C)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$a;->a:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$a;->b:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$a;->a:Lcom/google/common/base/CharMatcher;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$a;->b:Lcom/google/common/base/CharMatcher;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x13

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CharMatcher.and("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.a0 (com.google.common.base.CharMatcher$a0)
.class final Lcom/google/common/base/CharMatcher$a0;
.super Lcom/google/common/base/CharMatcher$t;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a0"
.end annotation


# static fields
.field static final b:I

.field static final c:Lcom/google/common/base/CharMatcher$a0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    sput v0, Lcom/google/common/base/CharMatcher$a0;->b:I

    new-instance v0, Lcom/google/common/base/CharMatcher$a0;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$a0;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$a0;->c:Lcom/google/common/base/CharMatcher$a0;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.whitespace()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public h(C)Z
    .registers 4

    const v0, 0x6449bf0a

    mul-int v0, v0, p1

    sget v1, Lcom/google/common/base/CharMatcher$a0;->b:I

    ushr-int/2addr v0, v1

    const-string v1, "\u2002\u3000\r\u0085\u200a\u2005\u2000\u3000\u2029\u000b\u3000\u2008\u2003\u205f\u3000\u1680\t \u2006\u2001\u202f\u00a0\u000c\u2009\u3000\u2004\u3000\u3000\u2028\n\u2007\u3000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

###### Class com.google.common.base.CharMatcher.b (com.google.common.base.CharMatcher$b)
.class final Lcom/google/common/base/CharMatcher$b;
.super Lcom/google/common/base/CharMatcher$t;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field static final b:Lcom/google/common/base/CharMatcher$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$b;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$b;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$b;->b:Lcom/google/common/base/CharMatcher$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.any()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/CharMatcher;

    return-object p1
.end method

.method public d(Ljava/lang/CharSequence;)I
    .registers 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    return p1
.end method

.method public e(Ljava/lang/CharSequence;)I
    .registers 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, -0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public f(Ljava/lang/CharSequence;I)I
    .registers 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    if-ne p2, p1, :cond_a

    const/4 p2, -0x1

    :cond_a
    return p2
.end method

.method public h(C)Z
    .registers 2

    const/4 p1, 0x1

    return p1
.end method

.method public i(Ljava/lang/CharSequence;)Z
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public j(Ljava/lang/CharSequence;)Z
    .registers 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public k()Lcom/google/common/base/CharMatcher;
    .registers 2

    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public m(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, ""

    return-object p1
.end method

.method public n(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    new-array p1, p1, [C

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([CC)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    return-object p2
.end method

###### Class com.google.common.base.CharMatcher.c (com.google.common.base.CharMatcher$c)
.class final Lcom/google/common/base/CharMatcher$c;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:[C


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/base/CharMatcher$c;->a:[C

    invoke-static {p1}, Ljava/util/Arrays;->sort([C)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public h(C)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$c;->a:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result p1

    if-ltz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CharMatcher.anyOf(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$c;->a:[C

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-char v4, v1, v3

    invoke-static {v4}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.d (com.google.common.base.CharMatcher$d)
.class final Lcom/google/common/base/CharMatcher$d;
.super Lcom/google/common/base/CharMatcher$t;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final b:Lcom/google/common/base/CharMatcher$d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$d;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$d;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$d;->b:Lcom/google/common/base/CharMatcher$d;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.ascii()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public h(C)Z
    .registers 3

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

###### Class com.google.common.base.CharMatcher.e (com.google.common.base.CharMatcher$e)
.class final Lcom/google/common/base/CharMatcher$e;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/CharMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$e;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$e;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$e;->a:Lcom/google/common/base/CharMatcher;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public h(C)Z
    .registers 5

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_31

    const/16 v0, 0x85

    if-eq p1, v0, :cond_31

    const/16 v0, 0x1680

    if-eq p1, v0, :cond_31

    const/16 v0, 0x2007

    const/4 v2, 0x0

    if-eq p1, v0, :cond_30

    const/16 v0, 0x205f

    if-eq p1, v0, :cond_31

    const/16 v0, 0x3000

    if-eq p1, v0, :cond_31

    const/16 v0, 0x2028

    if-eq p1, v0, :cond_31

    const/16 v0, 0x2029

    if-eq p1, v0, :cond_31

    packed-switch p1, :pswitch_data_32

    const/16 v0, 0x2000

    if-lt p1, v0, :cond_2e

    const/16 v0, 0x200a

    if-gt p1, v0, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    return v1

    :cond_30
    return v2

    :cond_31
    :pswitch_31
    return v1

    :pswitch_data_32
    .packed-switch 0x9
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CharMatcher.breakingWhitespace()"

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.f (com.google.common.base.CharMatcher$f)
.class final Lcom/google/common/base/CharMatcher$f;
.super Lcom/google/common/base/CharMatcher$y;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# static fields
.field static final d:Lcom/google/common/base/CharMatcher$f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$f;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$f;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$f;->d:Lcom/google/common/base/CharMatcher$f;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-static {}, Lcom/google/common/base/CharMatcher$f;->r()[C

    move-result-object v0

    invoke-static {}, Lcom/google/common/base/CharMatcher$f;->q()[C

    move-result-object v1

    const-string v2, "CharMatcher.digit()"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/common/base/CharMatcher$y;-><init>(Ljava/lang/String;[C[C)V

    return-void
.end method

.method private static q()[C
    .registers 4

    const/16 v0, 0x25

    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_15

    const-string v3, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0de6\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1a80\u1a90\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\ua9d0\ua9f0\uaa50\uabf0\uff10"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, 0x9

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_15
    return-object v1
.end method

.method private static r()[C
    .registers 1

    const-string v0, "0\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0de6\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1a80\u1a90\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\ua9d0\ua9f0\uaa50\uabf0\uff10"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.g (com.google.common.base.CharMatcher$g)
.class abstract Lcom/google/common/base/CharMatcher$g;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "g"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public k()Lcom/google/common/base/CharMatcher;
    .registers 2

    new-instance v0, Lcom/google/common/base/CharMatcher$v;

    invoke-direct {v0, p0}, Lcom/google/common/base/CharMatcher$v;-><init>(Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.h (com.google.common.base.CharMatcher$h)
.class final Lcom/google/common/base/CharMatcher$h;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final a:Lcom/google/common/base/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/k;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/k<",
            "-",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/k;

    iput-object p1, p0, Lcom/google/common/base/CharMatcher$h;->a:Lcom/google/common/base/k;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher$h;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Character;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$h;->a:Lcom/google/common/base/k;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/k;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public h(C)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$h;->a:Lcom/google/common/base/k;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/base/k;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$h;->a:Lcom/google/common/base/k;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CharMatcher.forPredicate("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.i (com.google.common.base.CharMatcher$i)
.class final Lcom/google/common/base/CharMatcher$i;
.super Lcom/google/common/base/CharMatcher$g;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# instance fields
.field private final a:C

.field private final b:C


# direct methods
.method constructor <init>(CC)V
    .registers 4

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$g;-><init>()V

    if-lt p2, p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    iput-char p1, p0, Lcom/google/common/base/CharMatcher$i;->a:C

    iput-char p2, p0, Lcom/google/common/base/CharMatcher$i;->b:C

    return-void
.end method


# virtual methods
.method public h(C)Z
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$i;->a:C

    if-gt v0, p1, :cond_a

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$i;->b:C

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$i;->a:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$i;->b:C

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CharMatcher.inRange(\'"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.j (com.google.common.base.CharMatcher$j)
.class final Lcom/google/common/base/CharMatcher$j;
.super Lcom/google/common/base/CharMatcher$y;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j"
.end annotation


# static fields
.field static final d:Lcom/google/common/base/CharMatcher$j;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$j;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$j;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$j;->d:Lcom/google/common/base/CharMatcher$j;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const-string v0, "\u0000\u007f\u00ad\u0600\u061c\u06dd\u070f\u0890\u08e2\u1680\u180e\u2000\u2028\u205f\u2066\u3000\ud800\ufeff\ufff9"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, " \u00a0\u00ad\u0605\u061c\u06dd\u070f\u0891\u08e2\u1680\u180e\u200f\u202f\u2064\u206f\u3000\uf8ff\ufeff\ufffb"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "CharMatcher.invisible()"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/common/base/CharMatcher$y;-><init>(Ljava/lang/String;[C[C)V

    return-void
.end method

###### Class com.google.common.base.CharMatcher.k (com.google.common.base.CharMatcher$k)
.class final Lcom/google/common/base/CharMatcher$k;
.super Lcom/google/common/base/CharMatcher$g;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$g;-><init>()V

    iput-char p1, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    return-void
.end method


# virtual methods
.method public b(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result p1

    if-eqz p1, :cond_a

    move-object p1, p0

    goto :goto_e

    :cond_a
    invoke-static {}, Lcom/google/common/base/CharMatcher;->none()Lcom/google/common/base/CharMatcher;

    move-result-object p1

    :goto_e
    return-object p1
.end method

.method public h(C)Z
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public k()Lcom/google/common/base/CharMatcher;
    .registers 2

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->isNot(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    :cond_9
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->l(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method public n(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$k;->a:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CharMatcher.is(\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.l (com.google.common.base.CharMatcher$l)
.class final Lcom/google/common/base/CharMatcher$l;
.super Lcom/google/common/base/CharMatcher$g;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "l"
.end annotation


# instance fields
.field private final a:C

.field private final b:C


# direct methods
.method constructor <init>(CC)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$g;-><init>()V

    iput-char p1, p0, Lcom/google/common/base/CharMatcher$l;->a:C

    iput-char p2, p0, Lcom/google/common/base/CharMatcher$l;->b:C

    return-void
.end method


# virtual methods
.method public h(C)Z
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$l;->a:C

    if-eq p1, v0, :cond_b

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$l;->b:C

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$l;->a:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v0

    iget-char v1, p0, Lcom/google/common/base/CharMatcher$l;->b:C

    invoke-static {v1}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CharMatcher.anyOf(\""

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.m (com.google.common.base.CharMatcher$m)
.class final Lcom/google/common/base/CharMatcher$m;
.super Lcom/google/common/base/CharMatcher$g;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "m"
.end annotation


# instance fields
.field private final a:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$g;-><init>()V

    iput-char p1, p0, Lcom/google/common/base/CharMatcher$m;->a:C

    return-void
.end method


# virtual methods
.method public b(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$m;->a:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->b(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    :cond_c
    return-object p1
.end method

.method public h(C)Z
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$m;->a:C

    if-eq p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public k()Lcom/google/common/base/CharMatcher;
    .registers 2

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$m;->a:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 3

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$m;->a:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/google/common/base/CharMatcher;->any()Lcom/google/common/base/CharMatcher;

    move-result-object p1

    goto :goto_e

    :cond_d
    move-object p1, p0

    :goto_e
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$m;->a:C

    invoke-static {v0}, Lcom/google/common/base/CharMatcher;->a(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x15

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "CharMatcher.isNot(\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.n (com.google.common.base.CharMatcher$n)
.class final Lcom/google/common/base/CharMatcher$n;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "n"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/CharMatcher$n;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$n;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$n;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$n;->a:Lcom/google/common/base/CharMatcher$n;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public h(C)Z
    .registers 2

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CharMatcher.javaDigit()"

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.o (com.google.common.base.CharMatcher$o)
.class final Lcom/google/common/base/CharMatcher$o;
.super Lcom/google/common/base/CharMatcher$t;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "o"
.end annotation


# static fields
.field static final b:Lcom/google/common/base/CharMatcher$o;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$o;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$o;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$o;->b:Lcom/google/common/base/CharMatcher$o;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.javaIsoControl()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public h(C)Z
    .registers 3

    const/16 v0, 0x1f

    if-le p1, v0, :cond_f

    const/16 v0, 0x7f

    if-lt p1, v0, :cond_d

    const/16 v0, 0x9f

    if-gt p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

###### Class com.google.common.base.CharMatcher.p (com.google.common.base.CharMatcher$p)
.class final Lcom/google/common/base/CharMatcher$p;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "p"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/CharMatcher$p;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$p;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$p;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$p;->a:Lcom/google/common/base/CharMatcher$p;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public h(C)Z
    .registers 2

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CharMatcher.javaLetter()"

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.q (com.google.common.base.CharMatcher$q)
.class final Lcom/google/common/base/CharMatcher$q;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "q"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/CharMatcher$q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$q;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$q;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$q;->a:Lcom/google/common/base/CharMatcher$q;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public h(C)Z
    .registers 2

    invoke-static {p1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CharMatcher.javaLetterOrDigit()"

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.r (com.google.common.base.CharMatcher$r)
.class final Lcom/google/common/base/CharMatcher$r;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "r"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/CharMatcher$r;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$r;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$r;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$r;->a:Lcom/google/common/base/CharMatcher$r;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public h(C)Z
    .registers 2

    invoke-static {p1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CharMatcher.javaLowerCase()"

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.s (com.google.common.base.CharMatcher$s)
.class final Lcom/google/common/base/CharMatcher$s;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "s"
.end annotation


# static fields
.field static final a:Lcom/google/common/base/CharMatcher$s;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$s;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$s;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$s;->a:Lcom/google/common/base/CharMatcher$s;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public h(C)Z
    .registers 2

    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "CharMatcher.javaUpperCase()"

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.t (com.google.common.base.CharMatcher$t)
.class abstract Lcom/google/common/base/CharMatcher$t;
.super Lcom/google/common/base/CharMatcher$g;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "t"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$g;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/common/base/CharMatcher$t;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$t;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.u (com.google.common.base.CharMatcher$u)
.class Lcom/google/common/base/CharMatcher$u;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "u"
.end annotation


# instance fields
.field final a:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/CharMatcher;

    iput-object p1, p0, Lcom/google/common/base/CharMatcher$u;->a:Lcom/google/common/base/CharMatcher;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/CharSequence;)I
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$u;->a:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v1, p1}, Lcom/google/common/base/CharMatcher;->d(Ljava/lang/CharSequence;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public h(C)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$u;->a:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public i(Ljava/lang/CharSequence;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$u;->a:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->j(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/CharSequence;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$u;->a:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->i(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public k()Lcom/google/common/base/CharMatcher;
    .registers 2

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$u;->a:Lcom/google/common/base/CharMatcher;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$u;->a:Lcom/google/common/base/CharMatcher;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".negate()"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.v (com.google.common.base.CharMatcher$v)
.class Lcom/google/common/base/CharMatcher$v;
.super Lcom/google/common/base/CharMatcher$u;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "v"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher$u;-><init>(Lcom/google/common/base/CharMatcher;)V

    return-void
.end method

###### Class com.google.common.base.CharMatcher.w (com.google.common.base.CharMatcher$w)
.class final Lcom/google/common/base/CharMatcher$w;
.super Lcom/google/common/base/CharMatcher$t;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "w"
.end annotation


# static fields
.field static final b:Lcom/google/common/base/CharMatcher$w;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$w;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$w;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$w;->b:Lcom/google/common/base/CharMatcher$w;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "CharMatcher.none()"

    invoke-direct {p0, v0}, Lcom/google/common/base/CharMatcher$t;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)I
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method

.method public e(Ljava/lang/CharSequence;)I
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x1

    return p1
.end method

.method public f(Ljava/lang/CharSequence;I)I
    .registers 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, p1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    const/4 p1, -0x1

    return p1
.end method

.method public h(C)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public i(Ljava/lang/CharSequence;)Z
    .registers 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method public j(Ljava/lang/CharSequence;)Z
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public k()Lcom/google/common/base/CharMatcher;
    .registers 2

    invoke-static {}, Lcom/google/common/base/CharMatcher;->any()Lcom/google/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .registers 2

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/CharMatcher;

    return-object p1
.end method

.method public m(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.common.base.CharMatcher.x (com.google.common.base.CharMatcher$x)
.class final Lcom/google/common/base/CharMatcher$x;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "x"
.end annotation


# instance fields
.field final a:Lcom/google/common/base/CharMatcher;

.field final b:Lcom/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lcom/google/common/base/CharMatcher;Lcom/google/common/base/CharMatcher;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/CharMatcher;

    iput-object p1, p0, Lcom/google/common/base/CharMatcher$x;->a:Lcom/google/common/base/CharMatcher;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/CharMatcher;

    iput-object p1, p0, Lcom/google/common/base/CharMatcher$x;->b:Lcom/google/common/base/CharMatcher;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public h(C)Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$x;->a:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$x;->b:Lcom/google/common/base/CharMatcher;

    invoke-virtual {v0, p1}, Lcom/google/common/base/CharMatcher;->h(C)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p1, 0x1

    :goto_14
    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$x;->a:Lcom/google/common/base/CharMatcher;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/base/CharMatcher$x;->b:Lcom/google/common/base/CharMatcher;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "CharMatcher.or("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.y (com.google.common.base.CharMatcher$y)
.class Lcom/google/common/base/CharMatcher$y;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "y"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[C

.field private final c:[C


# direct methods
.method constructor <init>(Ljava/lang/String;[C[C)V
    .registers 8

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    iput-object p1, p0, Lcom/google/common/base/CharMatcher$y;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/common/base/CharMatcher$y;->b:[C

    iput-object p3, p0, Lcom/google/common/base/CharMatcher$y;->c:[C

    array-length p1, p2

    array-length v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    const/4 p1, 0x0

    :goto_16
    array-length v0, p2

    if-ge p1, v0, :cond_38

    aget-char v0, p2, p1

    aget-char v3, p3, p1

    if-gt v0, v3, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    :goto_22
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    add-int/lit8 v0, p1, 0x1

    array-length v3, p2

    if-ge v0, v3, :cond_36

    aget-char p1, p3, p1

    aget-char v3, p2, v0

    if-ge p1, v3, :cond_32

    const/4 p1, 0x1

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    :cond_36
    move p1, v0

    goto :goto_16

    :cond_38
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->c(Ljava/lang/Character;)Z

    move-result p1

    return p1
.end method

.method public h(C)Z
    .registers 5

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$y;->b:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    const/4 v1, 0x1

    if-ltz v0, :cond_a

    return v1

    :cond_a
    not-int v0, v0

    sub-int/2addr v0, v1

    if-ltz v0, :cond_15

    iget-object v2, p0, Lcom/google/common/base/CharMatcher$y;->c:[C

    aget-char v0, v2, v0

    if-gt p1, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/base/CharMatcher$y;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.common.base.CharMatcher.z (com.google.common.base.CharMatcher$z)
.class final Lcom/google/common/base/CharMatcher$z;
.super Lcom/google/common/base/CharMatcher$y;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "z"
.end annotation


# static fields
.field static final d:Lcom/google/common/base/CharMatcher$z;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/common/base/CharMatcher$z;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$z;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$z;->d:Lcom/google/common/base/CharMatcher$z;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const-string v0, "\u0000\u05be\u05d0\u05f3\u0600\u0750\u0e00\u1e00\u2100\ufb50\ufe70\uff61"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, "\u04f9\u05be\u05ea\u05f4\u06ff\u077f\u0e7f\u20af\u213a\ufdff\ufeff\uffdc"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v2, "CharMatcher.singleWidth()"

    invoke-direct {p0, v2, v0, v1}, Lcom/google/common/base/CharMatcher$y;-><init>(Ljava/lang/String;[C[C)V

    return-void
.end method
