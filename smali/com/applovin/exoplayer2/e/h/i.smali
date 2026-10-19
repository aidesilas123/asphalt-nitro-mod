###### Class com.applovin.exoplayer2.e.h.i (com.applovin.exoplayer2.e.h.i)
.class final Lcom/applovin/exoplayer2/e/h/i;
.super Lcom/applovin/exoplayer2/e/h/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/h/i$a;
    }
.end annotation


# instance fields
.field private Cf:Lcom/applovin/exoplayer2/e/h/i$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Cg:I

.field private Ch:Z

.field private Ci:Lcom/applovin/exoplayer2/e/z$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Cj:Lcom/applovin/exoplayer2/e/z$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/h/h;-><init>()V

    return-void
.end method

.method public static F(Lcom/applovin/exoplayer2/l/y;)Z
    .registers 2

    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0, p0, v0}, Lcom/applovin/exoplayer2/e/z;->a(ILcom/applovin/exoplayer2/l/y;Z)Z

    move-result p0
    :try_end_5
    .catch Lcom/applovin/exoplayer2/ai; {:try_start_1 .. :try_end_5} :catch_6

    return p0

    :catch_6
    const/4 p0, 0x0

    return p0
.end method

.method static a(BII)I
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    shr-int/2addr p0, p2

    rsub-int/lit8 p1, p1, 0x8

    const/16 p2, 0xff

    ushr-int p1, p2, p1

    and-int/2addr p0, p1

    return p0
.end method

.method private static a(BLcom/applovin/exoplayer2/e/h/i$a;)I
    .registers 4

    iget v0, p1, Lcom/applovin/exoplayer2/e/h/i$a;->Cn:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/applovin/exoplayer2/e/h/i;->a(BII)I

    move-result p0

    iget-object v0, p1, Lcom/applovin/exoplayer2/e/h/i$a;->Cm:[Lcom/applovin/exoplayer2/e/z$c;

    aget-object p0, v0, p0

    iget-boolean p0, p0, Lcom/applovin/exoplayer2/e/z$c;->vg:Z

    if-nez p0, :cond_14

    iget-object p0, p1, Lcom/applovin/exoplayer2/e/h/i$a;->Ck:Lcom/applovin/exoplayer2/e/z$d;

    iget p0, p0, Lcom/applovin/exoplayer2/e/z$d;->vn:I

    goto :goto_18

    :cond_14
    iget-object p0, p1, Lcom/applovin/exoplayer2/e/h/i$a;->Ck:Lcom/applovin/exoplayer2/e/z$d;

    iget p0, p0, Lcom/applovin/exoplayer2/e/z$d;->vo:I

    :goto_18
    return p0
.end method

.method static d(Lcom/applovin/exoplayer2/l/y;J)V
    .registers 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pl()I

    move-result v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_1e

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->I([B)V

    goto :goto_27

    :cond_1e
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/applovin/exoplayer2/l/y;->fA(I)V

    :goto_27
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    const-wide/16 v2, 0xff

    and-long v4, p1, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    const/16 v4, 0x8

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, v0, v1

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 v1, 0x18

    ushr-long/2addr p1, v1

    and-long/2addr p1, v2

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, p0

    return-void
.end method


# virtual methods
.method protected G(Lcom/applovin/exoplayer2/l/y;)J
    .registers 7

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_e

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_e
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    aget-byte v0, v0, v1

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/h/i;->Cf:Lcom/applovin/exoplayer2/e/h/i$a;

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/exoplayer2/e/h/i$a;

    invoke-static {v0, v3}, Lcom/applovin/exoplayer2/e/h/i;->a(BLcom/applovin/exoplayer2/e/h/i$a;)I

    move-result v0

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/h/i;->Ch:Z

    if-eqz v3, :cond_29

    iget v1, p0, Lcom/applovin/exoplayer2/e/h/i;->Cg:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_29
    int-to-long v3, v1

    invoke-static {p1, v3, v4}, Lcom/applovin/exoplayer2/e/h/i;->d(Lcom/applovin/exoplayer2/l/y;J)V

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e/h/i;->Ch:Z

    iput v0, p0, Lcom/applovin/exoplayer2/e/h/i;->Cg:I

    return-wide v3
.end method

.method J(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/e/h/i$a;
    .registers 8
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/h/i;->Ci:Lcom/applovin/exoplayer2/e/z$d;

    const/4 v0, 0x0

    if-nez v1, :cond_c

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/z;->c(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/e/z$d;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->Ci:Lcom/applovin/exoplayer2/e/z$d;

    return-object v0

    :cond_c
    iget-object v2, p0, Lcom/applovin/exoplayer2/e/h/i;->Cj:Lcom/applovin/exoplayer2/e/z$b;

    if-nez v2, :cond_17

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/z;->d(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/e/z$b;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->Cj:Lcom/applovin/exoplayer2/e/z$b;

    return-object v0

    :cond_17
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v0

    new-array v3, v0, [B

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v1, Lcom/applovin/exoplayer2/e/z$d;->mI:I

    invoke-static {p1, v0}, Lcom/applovin/exoplayer2/e/z;->d(Lcom/applovin/exoplayer2/l/y;I)[Lcom/applovin/exoplayer2/e/z$c;

    move-result-object v4

    array-length p1, v4

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Lcom/applovin/exoplayer2/e/z;->bS(I)I

    move-result v5

    new-instance p1, Lcom/applovin/exoplayer2/e/h/i$a;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/applovin/exoplayer2/e/h/i$a;-><init>(Lcom/applovin/exoplayer2/e/z$d;Lcom/applovin/exoplayer2/e/z$b;[B[Lcom/applovin/exoplayer2/e/z$c;I)V

    return-object p1
.end method

.method protected a(Lcom/applovin/exoplayer2/l/y;JLcom/applovin/exoplayer2/e/h/h$a;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/h/i;->Cf:Lcom/applovin/exoplayer2/e/h/i$a;

    if-eqz p2, :cond_b

    iget-object p1, p4, Lcom/applovin/exoplayer2/e/h/h$a;->dU:Lcom/applovin/exoplayer2/v;

    invoke-static {p1}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1

    :cond_b
    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/e/h/i;->J(Lcom/applovin/exoplayer2/l/y;)Lcom/applovin/exoplayer2/e/h/i$a;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->Cf:Lcom/applovin/exoplayer2/e/h/i$a;

    const/4 p2, 0x1

    if-nez p1, :cond_15

    return p2

    :cond_15
    iget-object p3, p1, Lcom/applovin/exoplayer2/e/h/i$a;->Ck:Lcom/applovin/exoplayer2/e/z$d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p3, Lcom/applovin/exoplayer2/e/z$d;->tf:[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lcom/applovin/exoplayer2/e/h/i$a;->Cl:[B

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    const-string v1, "audio/vorbis"

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    iget v1, p3, Lcom/applovin/exoplayer2/e/z$d;->vl:I

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/v$a;->G(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    iget v1, p3, Lcom/applovin/exoplayer2/e/z$d;->vk:I

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/v$a;->H(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    iget v1, p3, Lcom/applovin/exoplayer2/e/z$d;->mI:I

    invoke-virtual {p1, v1}, Lcom/applovin/exoplayer2/v$a;->N(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    iget p3, p3, Lcom/applovin/exoplayer2/e/z$d;->dM:I

    invoke-virtual {p1, p3}, Lcom/applovin/exoplayer2/v$a;->O(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/v$a;->c(Ljava/util/List;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p1

    iput-object p1, p4, Lcom/applovin/exoplayer2/e/h/h$a;->dU:Lcom/applovin/exoplayer2/v;

    return p2
.end method

.method protected aG(J)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/applovin/exoplayer2/e/h/h;->aG(J)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/h/i;->Ch:Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->Ci:Lcom/applovin/exoplayer2/e/z$d;

    if-eqz p1, :cond_15

    iget v0, p1, Lcom/applovin/exoplayer2/e/z$d;->vn:I

    :cond_15
    iput v0, p0, Lcom/applovin/exoplayer2/e/h/i;->Cg:I

    return-void
.end method

.method protected e(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/applovin/exoplayer2/e/h/h;->e(Z)V

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->Cf:Lcom/applovin/exoplayer2/e/h/i$a;

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->Ci:Lcom/applovin/exoplayer2/e/z$d;

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i;->Cj:Lcom/applovin/exoplayer2/e/z$b;

    :cond_c
    const/4 p1, 0x0

    iput p1, p0, Lcom/applovin/exoplayer2/e/h/i;->Cg:I

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/h/i;->Ch:Z

    return-void
.end method

###### Class com.applovin.exoplayer2.e.h.i.a (com.applovin.exoplayer2.e.h.i$a)
.class final Lcom/applovin/exoplayer2/e/h/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/h/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final Cj:Lcom/applovin/exoplayer2/e/z$b;

.field public final Ck:Lcom/applovin/exoplayer2/e/z$d;

.field public final Cl:[B

.field public final Cm:[Lcom/applovin/exoplayer2/e/z$c;

.field public final Cn:I


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/z$d;Lcom/applovin/exoplayer2/e/z$b;[B[Lcom/applovin/exoplayer2/e/z$c;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/h/i$a;->Ck:Lcom/applovin/exoplayer2/e/z$d;

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/h/i$a;->Cj:Lcom/applovin/exoplayer2/e/z$b;

    iput-object p3, p0, Lcom/applovin/exoplayer2/e/h/i$a;->Cl:[B

    iput-object p4, p0, Lcom/applovin/exoplayer2/e/h/i$a;->Cm:[Lcom/applovin/exoplayer2/e/z$c;

    iput p5, p0, Lcom/applovin/exoplayer2/e/h/i$a;->Cn:I

    return-void
.end method
