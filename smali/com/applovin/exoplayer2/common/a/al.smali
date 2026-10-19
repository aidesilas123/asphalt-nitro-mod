###### Class com.applovin.exoplayer2.common.a.al (com.applovin.exoplayer2.common.a.al)
.class final Lcom/applovin/exoplayer2/common/a/al;
.super Lcom/applovin/exoplayer2/common/a/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/common/a/al$b;,
        Lcom/applovin/exoplayer2/common/a/al$c;,
        Lcom/applovin/exoplayer2/common/a/al$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/exoplayer2/common/a/u<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final qP:Lcom/applovin/exoplayer2/common/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/u<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient oW:I

.field private final transient qQ:[I

.field final transient ql:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/applovin/exoplayer2/common/a/al;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/applovin/exoplayer2/common/a/al;-><init>([I[Ljava/lang/Object;I)V

    sput-object v0, Lcom/applovin/exoplayer2/common/a/al;->qP:Lcom/applovin/exoplayer2/common/a/u;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/u;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/al;->qQ:[I

    iput-object p2, p0, Lcom/applovin/exoplayer2/common/a/al;->ql:[Ljava/lang/Object;

    iput p3, p0, Lcom/applovin/exoplayer2/common/a/al;->oW:I

    return-void
.end method

.method static a([I[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .param p0    # [I
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p4, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x1

    if-ne p2, v1, :cond_14

    aget-object p0, p1, p3

    invoke-virtual {p0, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    xor-int/lit8 p0, p3, 0x1

    aget-object v0, p1, p0

    :cond_13
    return-object v0

    :cond_14
    if-nez p0, :cond_17

    return-object v0

    :cond_17
    array-length p2, p0

    sub-int/2addr p2, v1

    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-static {p3}, Lcom/applovin/exoplayer2/common/a/p;->bg(I)I

    move-result p3

    :goto_21
    and-int/2addr p3, p2

    aget v2, p0, p3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_28

    return-object v0

    :cond_28
    aget-object v3, p1, v2

    invoke-virtual {v3, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    xor-int/lit8 p0, v2, 0x1

    aget-object p0, p1, p0

    return-object p0

    :cond_35
    add-int/lit8 p3, p3, 0x1

    goto :goto_21
.end method

.method static a([Ljava/lang/Object;III)[I
    .registers 14

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    aget-object p1, p0, p3

    xor-int/lit8 p2, p3, 0x1

    aget-object p0, p0, p2

    invoke-static {p1, p0}, Lcom/applovin/exoplayer2/common/a/j;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_e
    add-int/lit8 v1, p2, -0x1

    new-array p2, p2, [I

    const/4 v2, -0x1

    invoke-static {p2, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v3, 0x0

    :goto_17
    if-ge v3, p1, :cond_77

    mul-int/lit8 v4, v3, 0x2

    add-int v5, v4, p3

    aget-object v6, p0, v5

    xor-int/lit8 v7, p3, 0x1

    add-int/2addr v4, v7

    aget-object v4, p0, v4

    invoke-static {v6, v4}, Lcom/applovin/exoplayer2/common/a/j;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/applovin/exoplayer2/common/a/p;->bg(I)I

    move-result v7

    :goto_2f
    and-int/2addr v7, v1

    aget v8, p2, v7

    if-ne v8, v2, :cond_39

    aput v5, p2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_39
    aget-object v9, p0, v8

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_44

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Multiple entries with same key: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, v8

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 p3, v8, 0x1

    aget-object p0, p0, p3

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_77
    return-object p2
.end method

.method static b(I[Ljava/lang/Object;)Lcom/applovin/exoplayer2/common/a/al;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/applovin/exoplayer2/common/a/al<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_7

    sget-object p0, Lcom/applovin/exoplayer2/common/a/al;->qP:Lcom/applovin/exoplayer2/common/a/u;

    check-cast p0, Lcom/applovin/exoplayer2/common/a/al;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_19

    aget-object p0, p1, v0

    aget-object v0, p1, v1

    invoke-static {p0, v0}, Lcom/applovin/exoplayer2/common/a/j;->j(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lcom/applovin/exoplayer2/common/a/al;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/applovin/exoplayer2/common/a/al;-><init>([I[Ljava/lang/Object;I)V

    return-object p0

    :cond_19
    array-length v2, p1

    shr-int/lit8 v1, v2, 0x1

    invoke-static {p0, v1}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkPositionIndex(II)I

    invoke-static {p0}, Lcom/applovin/exoplayer2/common/a/w;->bk(I)I

    move-result v1

    invoke-static {p1, p0, v1, v0}, Lcom/applovin/exoplayer2/common/a/al;->a([Ljava/lang/Object;III)[I

    move-result-object v0

    new-instance v1, Lcom/applovin/exoplayer2/common/a/al;

    invoke-direct {v1, v0, p1, p0}, Lcom/applovin/exoplayer2/common/a/al;-><init>([I[Ljava/lang/Object;I)V

    return-object v1
.end method


# virtual methods
.method fZ()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/al;->qQ:[I

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/al;->ql:[Ljava/lang/Object;

    iget v2, p0, Lcom/applovin/exoplayer2/common/a/al;->oW:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/applovin/exoplayer2/common/a/al;->a([I[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method gl()Lcom/applovin/exoplayer2/common/a/w;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/w<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/al$a;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/al;->ql:[Ljava/lang/Object;

    iget v2, p0, Lcom/applovin/exoplayer2/common/a/al;->oW:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/applovin/exoplayer2/common/a/al$a;-><init>(Lcom/applovin/exoplayer2/common/a/u;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method gn()Lcom/applovin/exoplayer2/common/a/w;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/w<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/al$c;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/al;->ql:[Ljava/lang/Object;

    iget v2, p0, Lcom/applovin/exoplayer2/common/a/al;->oW:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/applovin/exoplayer2/common/a/al$c;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lcom/applovin/exoplayer2/common/a/al$b;

    invoke-direct {v1, p0, v0}, Lcom/applovin/exoplayer2/common/a/al$b;-><init>(Lcom/applovin/exoplayer2/common/a/u;Lcom/applovin/exoplayer2/common/a/s;)V

    return-object v1
.end method

.method gp()Lcom/applovin/exoplayer2/common/a/q;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/q<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/al$c;

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/al;->ql:[Ljava/lang/Object;

    iget v2, p0, Lcom/applovin/exoplayer2/common/a/al;->oW:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/applovin/exoplayer2/common/a/al$c;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/al;->oW:I

    return v0
.end method

###### Class com.applovin.exoplayer2.common.a.al.a (com.applovin.exoplayer2.common.a.al$a)
.class Lcom/applovin/exoplayer2/common/a/al$a;
.super Lcom/applovin/exoplayer2/common/a/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/exoplayer2/common/a/w<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final transient oW:I

.field private final transient qR:I

.field private final transient ql:[Ljava/lang/Object;

.field private final transient qn:Lcom/applovin/exoplayer2/common/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/u<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/u;[Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/common/a/u<",
            "TK;TV;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/w;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/al$a;->qn:Lcom/applovin/exoplayer2/common/a/u;

    iput-object p2, p0, Lcom/applovin/exoplayer2/common/a/al$a;->ql:[Ljava/lang/Object;

    iput p3, p0, Lcom/applovin/exoplayer2/common/a/al$a;->qR:I

    iput p4, p0, Lcom/applovin/exoplayer2/common/a/al$a;->oW:I

    return-void
.end method

.method static synthetic a(Lcom/applovin/exoplayer2/common/a/al$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/common/a/al$a;->oW:I

    return p0
.end method

.method static synthetic b(Lcom/applovin/exoplayer2/common/a/al$a;)[Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/applovin/exoplayer2/common/a/al$a;->ql:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic c(Lcom/applovin/exoplayer2/common/a/al$a;)I
    .registers 1

    iget p0, p0, Lcom/applovin/exoplayer2/common/a/al$a;->qR:I

    return p0
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .registers 4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/w;->fY()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/common/a/s;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1e

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/al$a;->qn:Lcom/applovin/exoplayer2/common/a/u;

    invoke-virtual {v2, v0}, Lcom/applovin/exoplayer2/common/a/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method public fU()Lcom/applovin/exoplayer2/common/a/ax;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/ax<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/w;->fY()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/s;->fU()Lcom/applovin/exoplayer2/common/a/ax;

    move-result-object v0

    return-object v0
.end method

.method fZ()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method gA()Lcom/applovin/exoplayer2/common/a/s;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/applovin/exoplayer2/common/a/al$a$1;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/common/a/al$a$1;-><init>(Lcom/applovin/exoplayer2/common/a/al$a;)V

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/al$a;->fU()Lcom/applovin/exoplayer2/common/a/ax;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/al$a;->oW:I

    return v0
.end method

###### Class com.applovin.exoplayer2.common.a.al.a.AnonymousClass1 (com.applovin.exoplayer2.common.a.al$a$1)
.class Lcom/applovin/exoplayer2/common/a/al$a$1;
.super Lcom/applovin/exoplayer2/common/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/exoplayer2/common/a/al$a;->gA()Lcom/applovin/exoplayer2/common/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/s<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic qS:Lcom/applovin/exoplayer2/common/a/al$a;


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/al$a;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/al$a$1;->qS:Lcom/applovin/exoplayer2/common/a/al$a;

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public bo(I)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/al$a$1;->qS:Lcom/applovin/exoplayer2/common/a/al$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/al$a;->a(Lcom/applovin/exoplayer2/common/a/al$a;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/al$a$1;->qS:Lcom/applovin/exoplayer2/common/a/al$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/al$a;->b(Lcom/applovin/exoplayer2/common/a/al$a;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/al$a$1;->qS:Lcom/applovin/exoplayer2/common/a/al$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/common/a/al$a;->c(Lcom/applovin/exoplayer2/common/a/al$a;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/applovin/exoplayer2/common/a/al$a$1;->qS:Lcom/applovin/exoplayer2/common/a/al$a;

    invoke-static {v1}, Lcom/applovin/exoplayer2/common/a/al$a;->b(Lcom/applovin/exoplayer2/common/a/al$a;)[Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/exoplayer2/common/a/al$a$1;->qS:Lcom/applovin/exoplayer2/common/a/al$a;

    invoke-static {v2}, Lcom/applovin/exoplayer2/common/a/al$a;->c(Lcom/applovin/exoplayer2/common/a/al$a;)I

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    add-int/2addr p1, v2

    aget-object p1, v1, p1

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public fZ()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/common/a/al$a$1;->bo(I)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/al$a$1;->qS:Lcom/applovin/exoplayer2/common/a/al$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/common/a/al$a;->a(Lcom/applovin/exoplayer2/common/a/al$a;)I

    move-result v0

    return v0
.end method

###### Class com.applovin.exoplayer2.common.a.al.b (com.applovin.exoplayer2.common.a.al$b)
.class final Lcom/applovin/exoplayer2/common/a/al$b;
.super Lcom/applovin/exoplayer2/common/a/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/applovin/exoplayer2/common/a/w<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final transient ai:Lcom/applovin/exoplayer2/common/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/s<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient qn:Lcom/applovin/exoplayer2/common/a/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/common/a/u<",
            "TK;*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/applovin/exoplayer2/common/a/u;Lcom/applovin/exoplayer2/common/a/s;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/exoplayer2/common/a/u<",
            "TK;*>;",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/w;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/al$b;->qn:Lcom/applovin/exoplayer2/common/a/u;

    iput-object p2, p0, Lcom/applovin/exoplayer2/common/a/al$b;->ai:Lcom/applovin/exoplayer2/common/a/s;

    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .registers 4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/al$b;->fY()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/common/a/s;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/al$b;->qn:Lcom/applovin/exoplayer2/common/a/u;

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/common/a/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public fU()Lcom/applovin/exoplayer2/common/a/ax;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/ax<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/al$b;->fY()Lcom/applovin/exoplayer2/common/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/common/a/s;->fU()Lcom/applovin/exoplayer2/common/a/ax;

    move-result-object v0

    return-object v0
.end method

.method public fY()Lcom/applovin/exoplayer2/common/a/s;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/applovin/exoplayer2/common/a/s<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/al$b;->ai:Lcom/applovin/exoplayer2/common/a/s;

    return-object v0
.end method

.method fZ()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/common/a/al$b;->fU()Lcom/applovin/exoplayer2/common/a/ax;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/al$b;->qn:Lcom/applovin/exoplayer2/common/a/u;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

###### Class com.applovin.exoplayer2.common.a.al.c (com.applovin.exoplayer2.common.a.al$c)
.class final Lcom/applovin/exoplayer2/common/a/al$c;
.super Lcom/applovin/exoplayer2/common/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/common/a/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/applovin/exoplayer2/common/a/s<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient oU:I

.field private final transient oW:I

.field private final transient ql:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .registers 4

    invoke-direct {p0}, Lcom/applovin/exoplayer2/common/a/s;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/common/a/al$c;->ql:[Ljava/lang/Object;

    iput p2, p0, Lcom/applovin/exoplayer2/common/a/al$c;->oU:I

    iput p3, p0, Lcom/applovin/exoplayer2/common/a/al$c;->oW:I

    return-void
.end method


# virtual methods
.method fZ()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/al$c;->oW:I

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/common/base/Preconditions;->checkElementIndex(II)I

    iget-object v0, p0, Lcom/applovin/exoplayer2/common/a/al$c;->ql:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lcom/applovin/exoplayer2/common/a/al$c;->oU:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/common/a/al$c;->oW:I

    return v0
.end method
