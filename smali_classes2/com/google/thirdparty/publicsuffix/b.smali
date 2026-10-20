###### Class com.google.thirdparty.publicsuffix.b (com.google.thirdparty.publicsuffix.b)
.class final Lcom/google/thirdparty/publicsuffix/b;
.super Ljava/lang/Object;
.source "TrieParser.java"


# static fields
.field private static final a:Lcom/google/common/base/Joiner;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    invoke-static {v0}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v0

    sput-object v0, Lcom/google/thirdparty/publicsuffix/b;->a:Lcom/google/common/base/Joiner;

    return-void
.end method

.method private static a(Ljava/util/Deque;Ljava/lang/CharSequence;ILcom/google/common/collect/ImmutableMap$b;)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I",
            "Lcom/google/common/collect/ImmutableMap$b<",
            "Ljava/lang/String;",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p2

    :goto_6
    const/16 v3, 0x3a

    const/16 v4, 0x21

    const/16 v5, 0x2c

    const/16 v6, 0x3f

    if-ge v2, v0, :cond_24

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v7, 0x26

    if-eq v1, v7, :cond_24

    if-eq v1, v6, :cond_24

    if-eq v1, v4, :cond_24

    if-eq v1, v3, :cond_24

    if-ne v1, v5, :cond_21

    goto :goto_24

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_24
    :goto_24
    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lcom/google/thirdparty/publicsuffix/b;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p0, v7}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    if-eq v1, v4, :cond_37

    if-eq v1, v6, :cond_37

    if-eq v1, v3, :cond_37

    if-ne v1, v5, :cond_4a

    :cond_37
    sget-object v3, Lcom/google/thirdparty/publicsuffix/b;->a:Lcom/google/common/base/Joiner;

    invoke-virtual {v3, p0}, Lcom/google/common/base/Joiner;->e(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4a

    invoke-static {v1}, Lcom/google/thirdparty/publicsuffix/PublicSuffixType;->f(C)Lcom/google/thirdparty/publicsuffix/PublicSuffixType;

    move-result-object v4

    invoke-virtual {p3, v3, v4}, Lcom/google/common/collect/ImmutableMap$b;->g(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$b;

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    if-eq v1, v6, :cond_65

    if-eq v1, v5, :cond_65

    :cond_50
    if-ge v2, v0, :cond_65

    invoke-static {p0, p1, v2, p3}, Lcom/google/thirdparty/publicsuffix/b;->a(Ljava/util/Deque;Ljava/lang/CharSequence;ILcom/google/common/collect/ImmutableMap$b;)I

    move-result v1

    add-int/2addr v2, v1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-eq v1, v6, :cond_63

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_50

    :cond_63
    add-int/lit8 v2, v2, 0x1

    :cond_65
    invoke-interface {p0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    sub-int/2addr v2, p2

    return v2
.end method

.method static b(Ljava/lang/CharSequence;)Lcom/google/common/collect/ImmutableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/thirdparty/publicsuffix/PublicSuffixType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$b;

    move-result-object v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_15

    invoke-static {}, Lcom/google/common/collect/Queues;->newArrayDeque()Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-static {v3, p0, v2, v0}, Lcom/google/thirdparty/publicsuffix/b;->a(Ljava/util/Deque;Ljava/lang/CharSequence;ILcom/google/common/collect/ImmutableMap$b;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_9

    :cond_15
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$b;->d()Lcom/google/common/collect/ImmutableMap;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method
