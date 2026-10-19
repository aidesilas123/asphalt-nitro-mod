###### Class com.applovin.exoplayer2.h.a.a (com.applovin.exoplayer2.h.a.a)
.class public final Lcom/applovin/exoplayer2/h/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/h/a/a$a;
    }
.end annotation


# static fields
.field public static final NI:Lcom/applovin/exoplayer2/h/a/a;

.field private static final NJ:Lcom/applovin/exoplayer2/h/a/a$a;

.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/h/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final NK:I

.field public final NM:J

.field public final NN:J

.field public final NO:I

.field private final NP:[Lcom/applovin/exoplayer2/h/a/a$a;

.field public final ee:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v8, Lcom/applovin/exoplayer2/h/a/a;

    const/4 v9, 0x0

    new-array v2, v9, [Lcom/applovin/exoplayer2/h/a/a$a;

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/applovin/exoplayer2/h/a/a;-><init>(Ljava/lang/Object;[Lcom/applovin/exoplayer2/h/a/a$a;JJI)V

    sput-object v8, Lcom/applovin/exoplayer2/h/a/a;->NI:Lcom/applovin/exoplayer2/h/a/a;

    new-instance v0, Lcom/applovin/exoplayer2/h/a/a$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/h/a/a$a;-><init>(J)V

    invoke-virtual {v0, v9}, Lcom/applovin/exoplayer2/h/a/a$a;->ee(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/h/a/a;->NJ:Lcom/applovin/exoplayer2/h/a/a$a;

    sget-object v0, Lcom/applovin/exoplayer2/h/a/b;->a:Lcom/applovin/exoplayer2/h/a/b;

    sput-object v0, Lcom/applovin/exoplayer2/h/a/a;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Lcom/applovin/exoplayer2/h/a/a$a;JJI)V
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/h/a/a;->ee:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/applovin/exoplayer2/h/a/a;->NM:J

    iput-wide p5, p0, Lcom/applovin/exoplayer2/h/a/a;->NN:J

    array-length p1, p2

    add-int/2addr p1, p7

    iput p1, p0, Lcom/applovin/exoplayer2/h/a/a;->NK:I

    iput-object p2, p0, Lcom/applovin/exoplayer2/h/a/a;->NP:[Lcom/applovin/exoplayer2/h/a/a$a;

    iput p7, p0, Lcom/applovin/exoplayer2/h/a/a;->NO:I

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/h/a/a;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/h/a/a;->x(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/h/a/a;

    move-result-object p0

    return-object p0
.end method

.method private b(JJI)Z
    .registers 12

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    if-nez v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0, p5}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p5

    iget-wide v3, p5, Lcom/applovin/exoplayer2/h/a/a$a;->rJ:J

    const/4 p5, 0x1

    cmp-long v5, v3, v0

    if-nez v5, :cond_22

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p3, v0

    if-eqz v3, :cond_20

    cmp-long v0, p1, p3

    if-gez v0, :cond_21

    :cond_20
    const/4 v2, 0x1

    :cond_21
    return v2

    :cond_22
    cmp-long p3, p1, v3

    if-gez p3, :cond_27

    const/4 v2, 0x1

    :cond_27
    return v2
.end method

.method private static t(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static x(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/h/a/a;
    .registers 12

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/applovin/exoplayer2/h/a/a;->t(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    new-array v0, v1, [Lcom/applovin/exoplayer2/h/a/a$a;

    move-object v5, v0

    goto :goto_30

    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/applovin/exoplayer2/h/a/a$a;

    :goto_16
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2f

    sget-object v3, Lcom/applovin/exoplayer2/h/a/a$a;->br:Lcom/applovin/exoplayer2/g$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-interface {v3, v4}, Lcom/applovin/exoplayer2/g$a;->fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/h/a/a$a;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2f
    move-object v5, v2

    :goto_30
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/applovin/exoplayer2/h/a/a;->t(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/applovin/exoplayer2/h/a/a;->t(I)Ljava/lang/String;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/applovin/exoplayer2/h/a/a;->t(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    new-instance p0, Lcom/applovin/exoplayer2/h/a/a;

    const/4 v4, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/applovin/exoplayer2/h/a/a;-><init>(Ljava/lang/Object;[Lcom/applovin/exoplayer2/h/a/a$a;JJI)V

    return-object p0
.end method


# virtual methods
.method public ec(I)Lcom/applovin/exoplayer2/h/a/a$a;
    .registers 4
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    iget v0, p0, Lcom/applovin/exoplayer2/h/a/a;->NO:I

    if-ge p1, v0, :cond_7

    sget-object p1, Lcom/applovin/exoplayer2/h/a/a;->NJ:Lcom/applovin/exoplayer2/h/a/a$a;

    goto :goto_c

    :cond_7
    iget-object v1, p0, Lcom/applovin/exoplayer2/h/a/a;->NP:[Lcom/applovin/exoplayer2/h/a/a$a;

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    :goto_c
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_45

    const-class v2, Lcom/applovin/exoplayer2/h/a/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_45

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/h/a/a;

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/a/a;->ee:Ljava/lang/Object;

    iget-object v3, p1, Lcom/applovin/exoplayer2/h/a/a;->ee:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/l/ai;->r(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget v2, p0, Lcom/applovin/exoplayer2/h/a/a;->NK:I

    iget v3, p1, Lcom/applovin/exoplayer2/h/a/a;->NK:I

    if-ne v2, v3, :cond_43

    iget-wide v2, p0, Lcom/applovin/exoplayer2/h/a/a;->NM:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/h/a/a;->NM:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_43

    iget-wide v2, p0, Lcom/applovin/exoplayer2/h/a/a;->NN:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/h/a/a;->NN:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_43

    iget v2, p0, Lcom/applovin/exoplayer2/h/a/a;->NO:I

    iget v3, p1, Lcom/applovin/exoplayer2/h/a/a;->NO:I

    if-ne v2, v3, :cond_43

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/a/a;->NP:[Lcom/applovin/exoplayer2/h/a/a$a;

    iget-object p1, p1, Lcom/applovin/exoplayer2/h/a/a;->NP:[Lcom/applovin/exoplayer2/h/a/a$a;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v0, 0x0

    :goto_44
    return v0

    :cond_45
    :goto_45
    return v1
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/applovin/exoplayer2/h/a/a;->NK:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/a/a;->ee:Ljava/lang/Object;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/applovin/exoplayer2/h/a/a;->NM:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/applovin/exoplayer2/h/a/a;->NN:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/applovin/exoplayer2/h/a/a;->NO:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/a/a;->NP:[Lcom/applovin/exoplayer2/h/a/a$a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPlaybackState(adsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/a/a;->ee:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/applovin/exoplayer2/h/a/a;->NM:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adGroups=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_20
    iget-object v3, p0, Lcom/applovin/exoplayer2/h/a/a;->NP:[Lcom/applovin/exoplayer2/h/a/a$a;

    array-length v3, v3

    const-string v4, "])"

    if-ge v2, v3, :cond_b9

    const-string v3, "adGroup(timeUs="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/a/a;->NP:[Lcom/applovin/exoplayer2/h/a/a$a;

    aget-object v3, v3, v2

    iget-wide v5, v3, Lcom/applovin/exoplayer2/h/a/a$a;->rJ:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", ads=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_3b
    iget-object v5, p0, Lcom/applovin/exoplayer2/h/a/a;->NP:[Lcom/applovin/exoplayer2/h/a/a$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/applovin/exoplayer2/h/a/a$a;->NS:[I

    array-length v5, v5

    const-string v6, ", "

    const/4 v7, 0x1

    if-ge v3, v5, :cond_a9

    const-string v5, "ad(state="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/applovin/exoplayer2/h/a/a;->NP:[Lcom/applovin/exoplayer2/h/a/a$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/applovin/exoplayer2/h/a/a$a;->NS:[I

    aget v5, v5, v3

    if-eqz v5, :cond_7f

    if-eq v5, v7, :cond_79

    const/4 v8, 0x2

    if-eq v5, v8, :cond_73

    const/4 v8, 0x3

    if-eq v5, v8, :cond_6d

    const/4 v8, 0x4

    if-eq v5, v8, :cond_67

    const/16 v5, 0x3f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_67
    const/16 v5, 0x21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_6d
    const/16 v5, 0x50

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_73
    const/16 v5, 0x53

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_79
    const/16 v5, 0x52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_7f
    const/16 v5, 0x5f

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_84
    const-string v5, ", durationUs="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/applovin/exoplayer2/h/a/a;->NP:[Lcom/applovin/exoplayer2/h/a/a$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/applovin/exoplayer2/h/a/a$a;->tT:[J

    aget-wide v8, v5, v3

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/applovin/exoplayer2/h/a/a;->NP:[Lcom/applovin/exoplayer2/h/a/a$a;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/applovin/exoplayer2/h/a/a$a;->NS:[I

    array-length v5, v5

    sub-int/2addr v5, v7

    if-ge v3, v5, :cond_a6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    :cond_a9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/a/a;->NP:[Lcom/applovin/exoplayer2/h/a/a$a;

    array-length v3, v3

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_b5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_20

    :cond_b9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(JJ)I
    .registers 12

    iget v0, p0, Lcom/applovin/exoplayer2/h/a/a;->NK:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_13

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/exoplayer2/h/a/a;->b(JJI)Z

    move-result v1

    if-eqz v1, :cond_13

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_13
    if-ltz v0, :cond_20

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/h/a/a$a;->lO()Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, -0x1

    :goto_21
    return v0
.end method

.method public y(JJ)I
    .registers 11

    const/4 v0, -0x1

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, p1, v1

    if-eqz v3, :cond_41

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, p3, v3

    if-eqz v5, :cond_15

    cmp-long v3, p1, p3

    if-ltz v3, :cond_15

    goto :goto_41

    :cond_15
    iget p3, p0, Lcom/applovin/exoplayer2/h/a/a;->NO:I

    :goto_17
    iget p4, p0, Lcom/applovin/exoplayer2/h/a/a;->NK:I

    if-ge p3, p4, :cond_3c

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p4

    iget-wide v3, p4, Lcom/applovin/exoplayer2/h/a/a$a;->rJ:J

    cmp-long p4, v3, v1

    if-eqz p4, :cond_2f

    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p4

    iget-wide v3, p4, Lcom/applovin/exoplayer2/h/a/a$a;->rJ:J

    cmp-long p4, v3, p1

    if-lez p4, :cond_39

    :cond_2f
    invoke-virtual {p0, p3}, Lcom/applovin/exoplayer2/h/a/a;->ec(I)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p4

    invoke-virtual {p4}, Lcom/applovin/exoplayer2/h/a/a$a;->lN()Z

    move-result p4

    if-nez p4, :cond_3c

    :cond_39
    add-int/lit8 p3, p3, 0x1

    goto :goto_17

    :cond_3c
    iget p1, p0, Lcom/applovin/exoplayer2/h/a/a;->NK:I

    if-ge p3, p1, :cond_41

    move v0, p3

    :cond_41
    :goto_41
    return v0
.end method

###### Class com.applovin.exoplayer2.h.a.a.C0039a (com.applovin.exoplayer2.h.a.a$a)
.class public final Lcom/applovin/exoplayer2/h/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/h/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final br:Lcom/applovin/exoplayer2/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/applovin/exoplayer2/g$a<",
            "Lcom/applovin/exoplayer2/h/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final NQ:I

.field public final NR:[Landroid/net/Uri;

.field public final NS:[I

.field public final NT:J

.field public final NU:Z

.field public final rJ:J

.field public final tT:[J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/applovin/exoplayer2/h/a/c;->a:Lcom/applovin/exoplayer2/h/a/c;

    sput-object v0, Lcom/applovin/exoplayer2/h/a/a$a;->br:Lcom/applovin/exoplayer2/g$a;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 14

    const/4 v0, 0x0

    new-array v5, v0, [I

    new-array v6, v0, [Landroid/net/Uri;

    new-array v7, v0, [J

    const/4 v4, -0x1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/h/a/a$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-void
.end method

.method private constructor <init>(JI[I[Landroid/net/Uri;[JJZ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p4

    array-length v1, p5

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    iput-wide p1, p0, Lcom/applovin/exoplayer2/h/a/a$a;->rJ:J

    iput p3, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NQ:I

    iput-object p4, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NS:[I

    iput-object p5, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NR:[Landroid/net/Uri;

    iput-object p6, p0, Lcom/applovin/exoplayer2/h/a/a$a;->tT:[J

    iput-wide p7, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NT:J

    iput-boolean p9, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NU:Z

    return-void
.end method

.method private static a([JI)[J
    .registers 5
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {p0, v0, p1, v1, v2}, Ljava/util/Arrays;->fill([JIIJ)V

    return-object p0
.end method

.method private static b([II)[I
    .registers 4
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    array-length v0, p0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Ljava/util/Arrays;->fill([IIII)V

    return-object p0
.end method

.method public static synthetic c(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/h/a/a$a;
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/h/a/a$a;->y(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p0

    return-object p0
.end method

.method private static t(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static y(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/h/a/a$a;
    .registers 13

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/applovin/exoplayer2/h/a/a$a;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/applovin/exoplayer2/h/a/a$a;->t(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/applovin/exoplayer2/h/a/a$a;->t(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/applovin/exoplayer2/h/a/a$a;->t(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    const/4 v6, 0x4

    invoke-static {v6}, Lcom/applovin/exoplayer2/h/a/a$a;->t(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/applovin/exoplayer2/h/a/a$a;->t(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/applovin/exoplayer2/h/a/a$a;->t(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    new-instance p0, Lcom/applovin/exoplayer2/h/a/a$a;

    if-nez v2, :cond_46

    new-array v2, v0, [I

    :cond_46
    move-object v7, v2

    if-nez v1, :cond_4c

    new-array v1, v0, [Landroid/net/Uri;

    goto :goto_54

    :cond_4c
    new-array v2, v0, [Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    :goto_54
    if-nez v6, :cond_5a

    new-array v0, v0, [J

    move-object v8, v0

    goto :goto_5b

    :cond_5a
    move-object v8, v6

    :goto_5b
    move-object v2, p0

    move-object v6, v7

    move-object v7, v1

    invoke-direct/range {v2 .. v11}, Lcom/applovin/exoplayer2/h/a/a$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object p0
.end method


# virtual methods
.method public ed(I)I
    .registers 5
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = -0x1L
        .end annotation
    .end param

    const/4 v0, 0x1

    add-int/2addr p1, v0

    :goto_2
    iget-object v1, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NS:[I

    array-length v2, v1

    if-ge p1, v2, :cond_17

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NU:Z

    if-nez v2, :cond_17

    aget v2, v1, p1

    if-eqz v2, :cond_17

    aget v1, v1, p1

    if-ne v1, v0, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_17
    :goto_17
    return p1
.end method

.method public ee(I)Lcom/applovin/exoplayer2/h/a/a$a;
    .registers 13
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NS:[I

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/h/a/a$a;->b([II)[I

    move-result-object v5

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a/a$a;->tT:[J

    invoke-static {v0, p1}, Lcom/applovin/exoplayer2/h/a/a$a;->a([JI)[J

    move-result-object v7

    iget-object v0, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NR:[Landroid/net/Uri;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/net/Uri;

    new-instance v0, Lcom/applovin/exoplayer2/h/a/a$a;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/h/a/a$a;->rJ:J

    iget-wide v8, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NT:J

    iget-boolean v10, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NU:Z

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v10}, Lcom/applovin/exoplayer2/h/a/a$a;-><init>(JI[I[Landroid/net/Uri;[JJZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    const-class v2, Lcom/applovin/exoplayer2/h/a/a$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_4f

    :cond_10
    check-cast p1, Lcom/applovin/exoplayer2/h/a/a$a;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/h/a/a$a;->rJ:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/h/a/a$a;->rJ:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4d

    iget v2, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NQ:I

    iget v3, p1, Lcom/applovin/exoplayer2/h/a/a$a;->NQ:I

    if-ne v2, v3, :cond_4d

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NR:[Landroid/net/Uri;

    iget-object v3, p1, Lcom/applovin/exoplayer2/h/a/a$a;->NR:[Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NS:[I

    iget-object v3, p1, Lcom/applovin/exoplayer2/h/a/a$a;->NS:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/applovin/exoplayer2/h/a/a$a;->tT:[J

    iget-object v3, p1, Lcom/applovin/exoplayer2/h/a/a$a;->tT:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-wide v2, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NT:J

    iget-wide v4, p1, Lcom/applovin/exoplayer2/h/a/a$a;->NT:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4d

    iget-boolean v2, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NU:Z

    iget-boolean p1, p1, Lcom/applovin/exoplayer2/h/a/a$a;->NU:Z

    if-ne v2, p1, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v0, 0x0

    :goto_4e
    return v0

    :cond_4f
    :goto_4f
    return v1
.end method

.method public hashCode()I
    .registers 7

    iget v0, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NQ:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/applovin/exoplayer2/h/a/a$a;->rJ:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NR:[Landroid/net/Uri;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NS:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/applovin/exoplayer2/h/a/a$a;->tT:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NT:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NU:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public lM()I
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/h/a/a$a;->ed(I)I

    move-result v0

    return v0
.end method

.method public lN()Z
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NQ:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/h/a/a$a;->lM()I

    move-result v0

    iget v1, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NQ:I

    if-ge v0, v1, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0
.end method

.method public lO()Z
    .registers 6

    iget v0, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NQ:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_9
    iget v3, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NQ:I

    if-ge v2, v3, :cond_1c

    iget-object v3, p0, Lcom/applovin/exoplayer2/h/a/a$a;->NS:[I

    aget v4, v3, v2

    if-eqz v4, :cond_1b

    aget v3, v3, v2

    if-ne v3, v1, :cond_18

    goto :goto_1b

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1b
    :goto_1b
    return v1

    :cond_1c
    return v0
.end method

###### Class com.applovin.exoplayer2.h.a.c (com.applovin.exoplayer2.h.a.c)
.class public final synthetic Lcom/applovin/exoplayer2/h/a/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/h/a/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/h/a/c;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/h/a/c;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/h/a/c;->a:Lcom/applovin/exoplayer2/h/a/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/h/a/a$a;->c(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/h/a/a$a;

    move-result-object p1

    return-object p1
.end method

###### Class com.applovin.exoplayer2.h.a.b (com.applovin.exoplayer2.h.a.b)
.class public final synthetic Lcom/applovin/exoplayer2/h/a/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/applovin/exoplayer2/g$a;


# static fields
.field public static final synthetic a:Lcom/applovin/exoplayer2/h/a/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/applovin/exoplayer2/h/a/b;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/h/a/b;-><init>()V

    sput-object v0, Lcom/applovin/exoplayer2/h/a/b;->a:Lcom/applovin/exoplayer2/h/a/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromBundle(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/g;
    .registers 2

    invoke-static {p1}, Lcom/applovin/exoplayer2/h/a/a;->a(Landroid/os/Bundle;)Lcom/applovin/exoplayer2/h/a/a;

    move-result-object p1

    return-object p1
.end method
