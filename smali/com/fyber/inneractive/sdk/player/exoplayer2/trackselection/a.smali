###### Class com.fyber.inneractive.sdk.player.exoplayer2.trackselection.a (com.fyber.inneractive.sdk.player.exoplayer2.trackselection.a)
.class public abstract Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

.field public final b:I

.field public final c:[I

.field public final d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

.field public final e:[J

.field public f:I


# direct methods
.method public varargs constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;[I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->b(Z)V

    invoke-static {p1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    array-length v0, p2

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->b:I

    new-array v0, v0, [Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iput-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    const/4 v0, 0x0

    :goto_1d
    array-length v2, p2

    if-ge v0, v2, :cond_2d

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2d
    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    new-instance v0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a$b;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a$b;-><init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a$a;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->c:[I

    :goto_3e
    iget p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->b:I

    if-ge v1, p2, :cond_51

    iget-object p2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->c:[I

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;->a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_51
    new-array p1, p2, [J

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->e:[J

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->c:[I

    invoke-interface {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;->e()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final a(Lcom/fyber/inneractive/sdk/player/exoplayer2/i;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->b:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public final a(I)Lcom/fyber/inneractive/sdk/player/exoplayer2/i;
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a(IJ)Z
    .registers 11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->b(IJ)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    iget v5, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->b:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1f

    if-nez v2, :cond_1f

    if-eq v4, p1, :cond_1b

    invoke-virtual {p0, v4, v0, v1}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->b(IJ)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    if-nez v2, :cond_22

    return v3

    :cond_22
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->e:[J

    aget-wide v3, v2, p1

    add-long/2addr v0, p2

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v2, p1

    return v6
.end method

.method public final b(I)I
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method public final b()Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    return-object v0
.end method

.method public final b(IJ)Z
    .registers 7

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->e:[J

    aget-wide v1, v0, p1

    cmp-long p1, v1, p2

    if-lez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public final c(I)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->b:I

    if-ge v0, v1, :cond_f

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->c:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_f
    const/4 p1, -0x1

    return p1
.end method

.method public final c()Lcom/fyber/inneractive/sdk/player/exoplayer2/i;
    .registers 3

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->d:[Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    invoke-interface {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/e;->e()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_27

    :cond_12
    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    iget-object v3, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    if-ne v2, v3, :cond_25

    iget-object v2, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->c:[I

    iget-object p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->c:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :goto_27
    return v1
.end method

.method public final f()I
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->c:[I

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->f:I

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->a:Lcom/fyber/inneractive/sdk/player/exoplayer2/source/r;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->f:I

    :cond_15
    iget v0, p0, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;->f:I

    return v0
.end method

###### Class com.fyber.inneractive.sdk.player.exoplayer2.trackselection.a.C0189a (com.fyber.inneractive.sdk.player.exoplayer2.trackselection.a$a)
.class public synthetic Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation

###### Class com.fyber.inneractive.sdk.player.exoplayer2.trackselection.a.b (com.fyber.inneractive.sdk.player.exoplayer2.trackselection.a$b)
.class public final Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/fyber/inneractive/sdk/player/exoplayer2/i;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/player/exoplayer2/trackselection/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    check-cast p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;

    iget p2, p2, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->b:I

    iget p1, p1, Lcom/fyber/inneractive/sdk/player/exoplayer2/i;->b:I

    sub-int/2addr p2, p1

    return p2
.end method
